import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'

// Server component client (for auth only)
export const createServerClient = () => 
  createServerComponentClient({ cookies })

// Server queries using Supabase
export const serverQueries = {
  getStoryWithLessons: async (storyId: string) => {
    const supabase = createServerClient()
    const { data, error } = await supabase
      .from('stories')
      .select(`
        *,
        lessons (*)
      `)
      .eq('id', storyId)
      .single()

    if (error) {
      console.error('Error fetching story with lessons:', error)
      return null
    }
    return data
  },
  getAllStories: async () => {
    const supabase = createServerClient()
    const { data, error } = await supabase
      .from('stories')
      .select('*')
      .order('story_order', { ascending: true })

    if (error) {
      console.error('Error fetching all stories:', error)
      return []
    }
    return data
  }
}