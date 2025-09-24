import { createClientComponentClient } from '@supabase/auth-helpers-nextjs'
import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { createRouteHandlerClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import { type Database } from '@/types/supabase'

// Client-side Supabase client
export const createClient = () => createClientComponentClient<Database>()

// Server component client
export const createServerClient = () => 
  createServerComponentClient<Database>({ cookies })

// Route handler client (for API routes)
export const createRouteClient = () => 
  createRouteHandlerClient<Database>({ cookies })

// Type-safe query builders
export const supabase = createClient()

// Helper functions for common queries
export const queries = {
  // Get user profile
  getUserProfile: async (userId: string) => {
    const { data, error } = await supabase
      .from('profiles')
      .select('*')
      .eq('id', userId)
      .single()
    
    if (error) throw error
    return data
  },

  // Get all stories with lessons
  getStoriesWithLessons: async () => {
    const { data, error } = await supabase
      .from('stories')
      .select(`
        *,
        lessons:story_lessons(*)
      `)
      .eq('is_active', true)
      .order('story_order')
    
    if (error) throw error
    return data
  },

  // Get user progress for a story
  getStoryProgress: async (userId: string, storyId: string) => {
    const { data, error } = await supabase
      .from('user_progress')
      .select('*')
      .eq('user_id', userId)
      .eq('story_id', storyId)
    
    if (error) throw error
    return data
  },

  // Update lesson progress
  updateLessonProgress: async (
    userId: string,
    lessonId: string,
    storyId: string,
    wasCorrect: boolean
  ) => {
    const { data: existing } = await supabase
      .from('user_progress')
      .select('*')
      .eq('user_id', userId)
      .eq('lesson_id', lessonId)
      .single()

    if (existing) {
      // Update existing progress
      const { data, error } = await supabase
        .from('user_progress')
        .update({
          times_studied: existing.times_studied + 1,
          correct_attempts: wasCorrect 
            ? existing.correct_attempts + 1 
            : existing.correct_attempts,
          incorrect_attempts: !wasCorrect 
            ? existing.incorrect_attempts + 1 
            : existing.incorrect_attempts,
          mastery_level: Math.min(100, existing.mastery_level + (wasCorrect ? 5 : -2)),
          last_studied_at: new Date().toISOString(),
          updated_at: new Date().toISOString()
        })
        .eq('id', existing.id)
        .select()
        .single()

      if (error) throw error
      return data
    } else {
      // Create new progress record
      const { data, error } = await supabase
        .from('user_progress')
        .insert({
          user_id: userId,
          lesson_id: lessonId,
          story_id: storyId,
          times_studied: 1,
          correct_attempts: wasCorrect ? 1 : 0,
          incorrect_attempts: wasCorrect ? 0 : 1,
          mastery_level: wasCorrect ? 5 : 0,
          last_studied_at: new Date().toISOString()
        })
        .select()
        .single()

      if (error) throw error
      return data
    }
  },

  // Create learning session
  createLearningSession: async (userId: string, storyId: string) => {
    const { data, error } = await supabase
      .from('learning_sessions')
      .insert({
        user_id: userId,
        story_id: storyId,
        device_type: typeof navigator !== 'undefined' 
          ? /Mobile|Android|iPhone/i.test(navigator.userAgent) ? 'mobile' : 'desktop'
          : 'unknown'
      })
      .select()
      .single()

    if (error) throw error
    return data
  },

  // End learning session
  endLearningSession: async (
    sessionId: string,
    lessonsCompleted: number,
    accuracyScore: number,
    totalTimeSeconds: number
  ) => {
    const { data, error } = await supabase
      .from('learning_sessions')
      .update({
        session_end: new Date().toISOString(),
        lessons_completed: lessonsCompleted,
        accuracy_score: accuracyScore,
        total_time_seconds: totalTimeSeconds
      })
      .eq('id', sessionId)
      .select()
      .single()

    if (error) throw error
    return data
  }
}