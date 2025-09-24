import React from 'react';
import { createServerClient, serverQueries } from '@/lib/supabase/server';
import { BookOpen, TrendingUp, Award, Play, ChevronRight } from 'lucide-react';
import { type Story, type ProgressStats } from '@/types/database';
import Link from 'next/link';

async function getDashboardData() {
  const supabase = createServerClient();
  const { data: { user } } = await supabase.auth.getUser();
  
  const stories = await serverQueries.getAllStories();

  let stats: ProgressStats = {
    storiesCompleted: 0,
    totalStories: 0,
    lessonsStudied: 0,
    totalLessons: 0,
    currentStreak: 0,
    averageAccuracy: 0,
    totalStudyTime: 0
  };

  stats.totalStories = stories.length;

  if (user) {
    // TODO: Replace with actual database queries for stats
    stats.currentStreak = 3; // Placeholder
  }

  return { user, stories, stats };
}

export default async function DashboardPage() {
  const { user, stories, stats } = await getDashboardData();

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 p-4">
      <div className="max-w-6xl mx-auto">
        {/* Header */}
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-gray-800 mb-2">
            {user ? `Welcome back, ${user.email}! 👋` : 'Try SignLearn Pro 👋'}
          </h1>
          <p className="text-gray-600">
            {user ? 
              'Continue your ASL learning journey with story-based lessons' : 
              'Start learning ASL with interactive stories - no account required!'
            }
          </p>
          {!user && (
            <div className="mt-4 p-4 bg-blue-50 rounded-lg border border-blue-200">
              <p className="text-blue-800 text-sm">
                <Link href="/login" className="font-semibold underline">Log in or create an account</Link> to save your progress and track your learning!
              </p>
            </div>
          )}
        </div>

        {/* Progress Stats */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
          <div className="bg-white rounded-lg shadow-md p-6">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-lg font-semibold text-gray-800">Learning Progress</h3>
              <TrendingUp className="w-6 h-6 text-blue-600" />
            </div>
            <div className="space-y-2">
              <div className="flex justify-between">
                <span className="text-gray-600">Lessons Available:</span>
                <span className="font-semibold text-blue-600">
                  {stats.totalLessons}
                </span>
              </div>
              <div className="w-full bg-gray-200 rounded-full h-2">
                <div 
                  className="bg-blue-600 h-2 rounded-full"
                  style={{ 
                    width: `${user && stats.totalLessons > 0 ? (stats.lessonsStudied / stats.totalLessons) * 100 : 0}%` 
                  }}
                />
              </div>
            </div>
          </div>

          <div className="bg-white rounded-lg shadow-md p-6">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-lg font-semibold text-gray-800">
                {user ? 'Current Streak' : 'Try Premium'}
              </h3>
              <Award className="w-6 h-6 text-yellow-600" />
            </div>
            <div className="text-center">
              {user ? (
                <>
                  <div className="text-3xl font-bold text-yellow-600 mb-1">
                    {stats.currentStreak}
                  </div>
                  <div className="text-gray-600 text-sm">days in a row</div>
                </>
              ) : (
                <>
                  <div className="text-2xl font-bold text-yellow-600 mb-1">
                    Free
                  </div>
                  <div className="text-gray-600 text-sm">Try all features</div>
                </>
              )}
            </div>
          </div>

          <div className="bg-white rounded-lg shadow-md p-6">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-lg font-semibold text-gray-800">Stories Available</h3>
              <BookOpen className="w-6 h-6 text-green-600" />
            </div>
            <div className="text-center">
              <div className="text-3xl font-bold text-green-600 mb-1">
                {stats.totalStories}
              </div>
              <div className="text-gray-600 text-sm">interactive stories</div>
            </div>
          </div>
        </div>

        {/* Story Selection */}
        <div className="bg-white rounded-lg shadow-md p-6 mb-8">
          <h2 className="text-2xl font-bold text-gray-800 mb-6">Choose Your Story</h2>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {stories.map((story) => (
              <Link
                key={story.id}
                href={`/learn/${story.id}`}
                className="group bg-gray-50 rounded-lg p-6 hover:bg-blue-50 transition-all duration-200 border-2 border-transparent hover:border-blue-200"
              >
                <div className="flex items-start justify-between mb-4">
                  <div>
                    <h3 className="text-lg font-semibold text-gray-800 group-hover:text-blue-700 mb-2">
                      {story.title}
                    </h3>
                    <p className="text-gray-600 text-sm mb-3">
                      {story.description}
                    </p>
                  </div>
                  <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-blue-600 transition-colors" />
                </div>

                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-2">
                    <div className="flex items-center gap-1">
                      <div className={`w-2 h-2 rounded-full ${
                        story.difficulty_level <= 2 ? 'bg-green-500' :
                        story.difficulty_level <= 3 ? 'bg-yellow-500' : 'bg-red-500'
                      }`} />
                      <span className="text-xs text-gray-600">
                        Level {story.difficulty_level}
                      </span>
                    </div>
                    <span className="text-xs text-gray-500">•</span>
                    <span className="text-xs text-gray-600">
                      {story.id === 'story-1' ? 30 : 30} lessons
                    </span>
                  </div>
                  
                  <div className="flex items-center gap-1 text-blue-600 group-hover:text-blue-700">
                    <Play className="w-4 h-4" />
                    <span className="text-sm font-medium">Start</span>
                  </div>
                </div>

                {/* Progress indicator for this story */}
                <div className="mt-4">
                  <div className="w-full bg-gray-200 rounded-full h-1">
                    <div 
                      className="bg-blue-600 h-1 rounded-full transition-all duration-300"
                      style={{ width: '0%' }} // TODO: Calculate actual progress
                    />
                  </div>
                </div>
              </Link>
            ))}
          </div>
        </div>

        {/* Recent Activity */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-xl font-semibold text-gray-800 mb-4">
            {user ? 'Continue Learning' : 'Ready to Start?'}
          </h2>
          <div className="text-gray-600 text-center py-8">
            <BookOpen className="w-12 h-12 mx-auto mb-4 text-gray-400" />
            <p>
              {user ? 
                'Start a story above to begin tracking your progress!' :
                'Choose any story above to start learning ASL for free!'
              }
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}