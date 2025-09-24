// Offline-first data service
import { signLearnDB } from './indexeddb';

// Sample data - replace with your CSV data
const SAMPLE_STORIES = [
  {
    id: 'story-1',
    title: 'Curb Story 1',
    description: 'Learn 30 verbs (1-30)',
    difficulty_level: 1,
    story_order: 1,
    is_active: true,
    thumbnail_url: 'https://images.unsplash.com/photo-1542838132-92c53300491e?w=400'
  },
  {
    id: 'story-2', 
    title: 'Curb Story 2',
    description: 'Learn 30 verbs (31-60)',
    difficulty_level: 1,
    story_order: 2,
    is_active: true,
    thumbnail_url: 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400'
  }
];

const SAMPLE_LESSONS = [
  {
    id: 'lesson-1-1',
    story_id: 'story-1',
    lesson_order: 1,
    english_verb: 'to help',
    spanish_verb: 'ayudar',
    french_verb: 'aider',
    italian_verb: 'aiutare',
    portuguese_verb: 'ajudar',
    english_sentence: 'Curb Appeall helps Platypus prepare a healthy picnic.',
    spanish_sentence: 'Curb Appeall ayuda a Platypus a preparar un picnic saludable.',
    french_sentence: 'Curb Appeall aide Platypus à préparer un pique-nique.',
    italian_sentence: 'Curb Appeall aiuta Platypus a preparare un picnic.',
    portuguese_sentence: 'Curb Appeall ajuda o Platypus a preparar um piquenique.',
    mux_playback_id: null
  },
  {
    id: 'lesson-1-2',
    story_id: 'story-1',
    lesson_order: 2,
    english_verb: 'to study',
    spanish_verb: 'estudiar',
    french_verb: 'étudier',
    italian_verb: 'studiare',
    portuguese_verb: 'estudar',
    english_sentence: 'Curb and his friends decided to study nutrition to better understand their favorite foods.',
    spanish_sentence: 'Curb y sus amigos decidieron estudiar nutrición para entender mejor sus alimentos favoritos.',
    french_sentence: 'Curb et ses amis ont décidé d\'étudier la nutrition pour mieux comprendre leurs aliments préférés.',
    italian_sentence: 'Curb e i suoi amici hanno deciso di studiare la nutrizione per capire meglio i loro cibi preferiti.',
    portuguese_sentence: 'Curb e seus amigos decidiram estudar nutrição para entender melhor seus alimentos favoritos.',
    mux_playback_id: null
  }
];

export class OfflineDataService {
  private initialized = false;

  async initialize() {
    if (this.initialized) return;
    
    await signLearnDB.init();
    
    // Check if data exists
    const stories: any = await signLearnDB.getStories();
    if (stories.length === 0) {
      await this.seedData();
    }
    
    this.initialized = true;
  }

  private async seedData() {
    // Add stories
    for (const story of SAMPLE_STORIES) {
      await this.addStory(story);
    }
    
    // Add lessons
    for (const lesson of SAMPLE_LESSONS) {
      await this.addLesson(lesson);
    }
  }

  private async addStory(story: any) {
    return new Promise((resolve, reject) => {
      const transaction = (signLearnDB as any).db.transaction(['stories'], 'readwrite');
      const store = transaction.objectStore('stories');
      const request = store.add(story);
      
      request.onsuccess = () => resolve(request.result);
      request.onerror = () => reject(request.error);
    });
  }

  private async addLesson(lesson: any) {
    return new Promise((resolve, reject) => {
      const transaction = (signLearnDB as any).db.transaction(['lessons'], 'readwrite');
      const store = transaction.objectStore('lessons');
      const request = store.add(lesson);
      
      request.onsuccess = () => resolve(request.result);
      request.onerror = () => reject(request.error);
    });
  }

  async getStoriesWithLessons() {
    try {
      await this.initialize();
      
      const stories: any = await signLearnDB.getStories();
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
      console.error('Error loading stories:', error);
      // Return sample data if IndexedDB fails
      return [{
        id: 'story-1',
        title: 'Curb Story 1',
        description: 'Learn 30 verbs (1-30)',
        difficulty_level: 1,
        story_order: 1,
        is_active: true,
        thumbnail_url: 'https://images.unsplash.com/photo-1542838132-92c53300491e?w=400',
        lessons: [
          {
            id: 'lesson-1-1',
            story_id: 'story-1',
            lesson_order: 1,
            english_verb: 'to help',
            spanish_verb: 'ayudar',
            french_verb: 'aider',
            italian_verb: 'aiutare',
            portuguese_verb: 'ajudar',
            english_sentence: 'Curb Appeall helps Platypus prepare a healthy picnic.',
            spanish_sentence: 'Curb Appeall ayuda a Platypus a preparar un picnic saludable.',
            french_sentence: 'Curb Appeall aide Platypus à préparer un pique-nique.',
            italian_sentence: 'Curb Appeall aiuta Platypus a preparare un picnic.',
            portuguese_sentence: 'Curb Appeall ajuda o Platypus a preparar um piquenique.',
          }
        ]
      }];
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