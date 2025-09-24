// IndexedDB wrapper for offline storage
import { type StoryLesson, type UserProgress, type LearningSession } from '@/types/database';

class SignLearnDB {
  private db: IDBDatabase | null = null;
  private dbName = 'SignLearnPro';
  private version = 1;

  async init(): Promise<void> {
    return new Promise((resolve, reject) => {
      const request = indexedDB.open(this.dbName, this.version);
      
      request.onerror = () => reject(request.error);
      request.onsuccess = () => {
        this.db = request.result;
        resolve();
      };

      request.onupgradeneeded = (event) => {
        const db = (event.target as IDBOpenDBRequest).result;
        
        // Stories store
        if (!db.objectStoreNames.contains('stories')) {
          const storiesStore = db.createObjectStore('stories', { keyPath: 'id' });
          storiesStore.createIndex('story_order', 'story_order');
        }
        
        // Lessons store
        if (!db.objectStoreNames.contains('lessons')) {
          const lessonsStore = db.createObjectStore('lessons', { keyPath: 'id' });
          lessonsStore.createIndex('story_id', 'story_id');
          lessonsStore.createIndex('lesson_order', 'lesson_order');
        }
        
        // User progress store
        if (!db.objectStoreNames.contains('progress')) {
          const progressStore = db.createObjectStore('progress', { keyPath: 'id', autoIncrement: true });
          progressStore.createIndex('lesson_id', 'lesson_id');
          progressStore.createIndex('user_id', 'user_id');
        }
        
        // Learning sessions store
        if (!db.objectStoreNames.contains('sessions')) {
          const sessionsStore = db.createObjectStore('sessions', { keyPath: 'id', autoIncrement: true });
          sessionsStore.createIndex('user_id', 'user_id');
          sessionsStore.createIndex('story_id', 'story_id');
        }
      };
    });
  }

  async getStories() {
    await this.ensureDB();
    return new Promise((resolve, reject) => {
      const transaction = this.db!.transaction(['stories'], 'readonly');
      const store = transaction.objectStore('stories');
      const request = store.getAll();
      
      request.onsuccess = () => resolve(request.result);
      request.onerror = () => reject(request.error);
    });
  }

  async getLessonsByStory(storyId: string) {
    await this.ensureDB();
    return new Promise((resolve, reject) => {
      const transaction = this.db!.transaction(['lessons'], 'readonly');
      const store = transaction.objectStore('lessons');
      const index = store.index('story_id');
      const request = index.getAll(storyId);
      
      request.onsuccess = () => {
        const lessons = request.result.sort((a: any, b: any) => a.lesson_order - b.lesson_order);
        resolve(lessons);
      };
      request.onerror = () => reject(request.error);
    });
  }

  async getUserProgress(userId: string, lessonId: string) {
    await this.ensureDB();
    return new Promise((resolve, reject) => {
      const transaction = this.db!.transaction(['progress'], 'readonly');
      const store = transaction.objectStore('progress');
      const request = store.getAll();
      
      request.onsuccess = () => {
        const progress = request.result.find((p: any) => 
          p.user_id === userId && p.lesson_id === lessonId
        );
        resolve(progress || null);
      };
      request.onerror = () => reject(request.error);
    });
  }

  async saveProgress(progress: Partial<UserProgress>) {
    await this.ensureDB();
    return new Promise((resolve, reject) => {
      const transaction = this.db!.transaction(['progress'], 'readwrite');
      const store = transaction.objectStore('progress');
      
      const progressData = {
        ...progress,
        updated_at: new Date().toISOString(),
        created_at: progress.created_at || new Date().toISOString()
      };
      
      const request = store.put(progressData);
      request.onsuccess = () => resolve(request.result);
      request.onerror = () => reject(request.error);
    });
  }

  async saveSession(session: Partial<LearningSession>) {
    await this.ensureDB();
    return new Promise((resolve, reject) => {
      const transaction = this.db!.transaction(['sessions'], 'readwrite');
      const store = transaction.objectStore('sessions');
      
      const sessionData = {
        ...session,
        created_at: session.created_at || new Date().toISOString()
      };
      
      const request = store.add(sessionData);
      request.onsuccess = () => resolve(request.result);
      request.onerror = () => reject(request.error);
    });
  }

  private async ensureDB() {
    if (!this.db) {
      await this.init();
    }
  }
}

export const signLearnDB = new SignLearnDB();