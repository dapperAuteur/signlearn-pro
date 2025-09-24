import { createClientComponentClient } from '@supabase/auth-helpers-nextjs'
import { offlineData } from '@/lib/storage/offline-data'

// Client-side Supabase client (for auth only)
export const createClient = () => createClientComponentClient()

// Offline-first queries
export const queries = {
  // Get user profile (auth only)
  getUserProfile: async (userId: string) => {
    const supabase = createClient()
    const { data, error } = await supabase
      .from('profiles')
      .select('*')
      .eq('id', userId)
      .single()
    
    if (error) throw error
    return data
  },

  // Get all stories with lessons (offline)
  getStoriesWithLessons: async () => {
    return offlineData.getStoriesWithLessons()
  },

  // Get user progress for a story (offline)
  getStoryProgress: async (userId: string, storyId: string) => {
    return offlineData.getUserProgress(userId, storyId)
  },

  // Update lesson progress (offline)
  updateLessonProgress: async (
    userId: string,
    lessonId: string,
    storyId: string,
    wasCorrect: boolean
  ) => {
    return offlineData.updateLessonProgress(userId, lessonId, storyId, wasCorrect)
  },

  // Create learning session (offline)
  createLearningSession: async (userId: string, storyId: string) => {
    return offlineData.createLearningSession(userId, storyId)
  },

  // End learning session (offline - just return session ID)
  endLearningSession: async (
    sessionId: string,
    lessonsCompleted: number,
    accuracyScore: number,
    totalTimeSeconds: number
  ) => {
    // Store session end data locally
    return { id: sessionId, ended: true }
  }
}