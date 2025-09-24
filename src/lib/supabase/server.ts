import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import { offlineData } from '@/lib/storage/offline-data'

// Server component client (for auth only)
export const createServerClient = () => 
  createServerComponentClient({ cookies })

// Server queries using offline data
export const serverQueries = {
  getStoryWithLessons: async (storyId: string) => {
    const storiesWithLessons = await offlineData.getStoriesWithLessons()
    return storiesWithLessons.find(story => story.id === storyId) || null
  },
  getAllStories: async () => {
    const storiesWithLessons = await offlineData.getStoriesWithLessons()
    return storiesWithLessons.map(({ lessons, ...story }) => story)
  }
}