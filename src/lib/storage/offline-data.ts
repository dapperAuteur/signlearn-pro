// Offline-first data service
import { signLearnDB } from './indexeddb';
import { createClientComponentClient } from '@supabase/auth-helpers-nextjs';
import { type StoryWithLessons } from '@/types/database';

export class OfflineDataService {
  private initialized = false;

  async initialize() {
    if (this.initialized) return;
    await signLearnDB.init();
    this.initialized = true;
  }

  private async seedData(storiesWithLessons: StoryWithLessons[]) {
    await signLearnDB.clearAll();
    // Add stories
    for (const { lessons, ...story } of storiesWithLessons) {
      await signLearnDB.addStory(story as any);
    }
    
    // Add lessons
    for (const story of storiesWithLessons) {
      for (const lesson of story.lessons) {
        await signLearnDB.addLesson(lesson);
      }
    }
  }

  private async fetchAndCacheStories(): Promise<StoryWithLessons[]> {
    const supabase = createClientComponentClient();
    const { data: networkStories, error } = await supabase
      .from('stories')
      .select('*, lessons(*)')
      .order('story_order');

    if (error) {
      console.error('Failed to fetch stories from network:', error);
      throw error;
    }

    await this.seedData(networkStories);
    return networkStories;
  }

  async getStoriesWithLessons(): Promise<StoryWithLessons[]> {
    await this.initialize();

    // 1. Get local data from IndexedDB first
    const localStories: any[] = await signLearnDB.getStories();

    if (localStories.length > 0) {
      // If local data exists, return it immediately for a fast UI response.
      console.log('Serving data from IndexedDB first.');
      const storiesWithLessons = [];
      for (const story of localStories) {
        const lessons = await signLearnDB.getLessonsByStory(story.id);
        storiesWithLessons.push({ ...story, lessons });
      }

      // Then, trigger a background fetch to update the cache.
      // We don't await this, so the UI isn't blocked.
      this.fetchAndCacheStories().catch(err => {
        console.warn('Background cache update failed:', err.message);
      });

      return storiesWithLessons.sort((a, b) => a.story_order - b.story_order);
    } else {
      // If no local data, fetch from network, cache it, and then return it.
      console.log('No local data found. Fetching from network...');
      return this.fetchAndCacheStories();
    }
  }

  async getUserProgress(userId: string, storyId: string) {
    if (!userId) return [];
    await this.initialize();
    
    // Get all progress for user in this story
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
    if (!userId) return null; // Guest mode
    
    await this.initialize();
    
    // Get existing progress
    const existing: any = await signLearnDB.getUserProgress(userId, lessonId);
    
    if (existing) {
      // Update existing
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
      // Create new
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
}

export const offlineData = new OfflineDataService();