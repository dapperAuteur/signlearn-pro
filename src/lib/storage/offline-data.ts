// Offline-first data service with remote sync
import { signLearnDB } from './indexeddb';

export class OfflineDataService {
  private initialized = false;
  private supabase: any = null;

  private getSupabaseClient() {
    if (!this.supabase && typeof window !== 'undefined') {
      // Dynamic import to avoid server-side issues
      const { createClient } = require('@/lib/supabase/client');
      this.supabase = createClient();
    }
    return this.supabase;
  }

  async initialize() {
    if (this.initialized) return;
    
    try {
      await signLearnDB.init();
      this.initialized = true;
      
      // Try to sync with remote if online
      if (navigator.onLine) {
        this.syncWithRemote().catch(console.error);
      }
    } catch (error) {
      console.error('Failed to initialize offline data:', error);
      this.initialized = true;
    }
  }

  private async syncWithRemote() {
    try {
      console.log('Syncing with remote database...');
      
      // Ensure IndexedDB is fully initialized
      await signLearnDB.init();
      if (!(signLearnDB as any).db) {
        throw new Error('IndexedDB not available');
      }
      
      // Fetch stories from Supabase
      const { data: stories, error: storiesError } = await this.supabase
        .from('stories')
        .select('*')
        .eq('is_active', true)
        .order('story_order');

      if (!storiesError && stories) {
        for (const story of stories) {
          await this.saveStoryToLocal(story);
        }
      }

      // Fetch lessons from Supabase
      const { data: lessons, error: lessonsError } = await this.supabase
        .from('story_lessons')
        .select('*')
        .order('lesson_order');

      if (!lessonsError && lessons) {
        for (const lesson of lessons) {
          await this.saveLessonToLocal(lesson);
        }
      }

      console.log('Remote sync completed');
    } catch (error) {
      console.log('Remote sync failed, using local data:', error);
      // Don't throw - just continue with local data
    }
  }

  private async saveStoryToLocal(story: any) {
    try {
      if (!(signLearnDB as any).db) {
        await signLearnDB.init();
      }
      
      return new Promise((resolve, reject) => {
        const transaction = (signLearnDB as any).db.transaction(['stories'], 'readwrite');
        const store = transaction.objectStore('stories');
        const request = store.put(story);
        
        request.onsuccess = () => resolve(request.result);
        request.onerror = () => reject(request.error);
      });
    } catch (error) {
      console.error('Failed to save story to local:', error);
      throw error;
    }
  }

  private async saveLessonToLocal(lesson: any) {
    try {
      if (!(signLearnDB as any).db) {
        await signLearnDB.init();
      }
      
      return new Promise((resolve, reject) => {
        const transaction = (signLearnDB as any).db.transaction(['lessons'], 'readwrite');
        const store = transaction.objectStore('lessons');
        const request = store.put(lesson);
        
        request.onsuccess = () => resolve(request.result);
        request.onerror = () => reject(request.error);
      });
    } catch (error) {
      console.error('Failed to save lesson to local:', error);
      throw error;
    }
  }

  async getStoriesWithLessons() {
    await this.initialize();
    
    try {
      // Always try IndexedDB first
      const stories: any = await signLearnDB.getStories();
      
      if (stories.length === 0) {
        console.log('No local stories, providing fallback data');
        return this.getFallbackData();
      }

      const storiesWithLessons = [];
      for (const story of stories) {
        const lessons = await signLearnDB.getLessonsByStory(story.id);
        storiesWithLessons.push({
          ...story,
          lessons
        });
      }
      
      return storiesWithLessons.sort((a, b) => a.story_order - b.story_order);
    } catch (error) {
      console.error('Error loading stories from IndexedDB:', error);
      return this.getFallbackData();
    }
  }

  private getFallbackData() {
    return [{
      id: 'story-fallback',
      title: 'Sample ASL Story',
      description: 'Learn basic verbs offline',
      difficulty_level: 1,
      story_order: 1,
      is_active: true,
      thumbnail_url: 'https://images.unsplash.com/photo-1542838132-92c53300491e?w=400',
      lessons: [
        {
          id: 'lesson-fallback-1',
          story_id: 'story-fallback',
          lesson_order: 1,
          english_verb: 'to help',
          spanish_verb: 'ayudar',
          french_verb: 'aider',
          italian_verb: 'aiutare',
          portuguese_verb: 'ajudar',
          english_sentence: 'Learning to help others is important.',
          spanish_sentence: 'Aprender a ayudar a otros es importante.',
          french_sentence: 'Apprendre à aider les autres est important.',
          italian_sentence: 'Imparare ad aiutare gli altri è importante.',
          portuguese_sentence: 'Aprender a ajudar os outros é importante.',
        }
      ]
    }];
  }

  async getUserProgress(userId: string, storyId: string) {
    if (!userId) return [];
    await this.initialize();
    
    return new Promise((resolve, reject) => {
      const transaction = (signLearnDB as any).db.transaction(['progress'], 'readonly');
      const store = transaction.objectStore('progress');
      const request = store.getAll();
      
      request.onsuccess = () => {
        const progress = request.result.filter((p: any) => 
          p.user_id === userId && p.story_id === storyId
        );
        resolve(progress);
      };
      request.onerror = () => reject(request.error);
    });
  }

  async updateLessonProgress(userId: string, lessonId: string, storyId: string, wasCorrect: boolean) {
    if (!userId) return null;
    
    await this.initialize();
    
    const existing: any = await signLearnDB.getUserProgress(userId, lessonId);
    
    if (existing) {
      const updated = {
        ...existing,
        times_studied: existing.times_studied + 1,
        correct_attempts: wasCorrect ? existing.correct_attempts + 1 : existing.correct_attempts,
        incorrect_attempts: !wasCorrect ? existing.incorrect_attempts + 1 : existing.incorrect_attempts,
        mastery_level: Math.min(100, existing.mastery_level + (wasCorrect ? 5 : -2)),
        last_studied_at: new Date().toISOString()
      };
      
      return signLearnDB.saveProgress(updated);
    } else {
      const newProgress = {
        user_id: userId,
        lesson_id: lessonId,
        story_id: storyId,
        times_studied: 1,
        correct_attempts: wasCorrect ? 1 : 0,
        incorrect_attempts: wasCorrect ? 0 : 1,
        mastery_level: wasCorrect ? 5 : 0,
        last_studied_at: new Date().toISOString()
      };
      
      return signLearnDB.saveProgress(newProgress);
    }
  }

  async createLearningSession(userId: string, storyId: string) {
    await this.initialize();
    
    const session = {
      user_id: userId || 'guest',
      story_id: storyId,
      session_start: new Date().toISOString(),
      device_type: typeof navigator !== 'undefined' 
        ? /Mobile|Android|iPhone/i.test(navigator.userAgent) ? 'mobile' : 'desktop'
        : 'unknown'
    };
    
    return signLearnDB.saveSession(session);
  }

  // Trigger sync when back online
  async syncWhenOnline() {
    if (navigator.onLine) {
      await this.syncWithRemote();
    }
  }
}

export const offlineData = new OfflineDataService();