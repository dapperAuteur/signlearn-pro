'use client';

import React, { useState, useEffect } from 'react';
import { useRequireAuth } from '@/hooks/useAuth';
import { queries } from '@/lib/supabase/client';
import { BookOpen, TrendingUp, Award, Play, ChevronRight } from 'lucide-react';
import { type StoryWithLessons, type ProgressStats } from '@/types/database';
import Link from 'next/link';

export default function DashboardPage() {
  const { user, loading } = useRequireAuth();
  const [stories, setStories] = useState<StoryWithLessons[]>([]);
  const [stats, setStats] = useState<ProgressStats>({
    storiesCompleted: 0,
    totalStories: 0,
    lessonsStudied: 0,
    totalLessons: 0,
    currentStreak: 3,
    averageAccuracy: 0,
    totalStudyTime: 0
  });
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    if (user) {
      loadDashboardData();
    }
  }, [user]);

  const loadDashboardData = async () => {
    if (!user) return;

    try {
      // Load stories with lessons
      const storiesData = await queries.getStoriesWithLessons();
      setStories(storiesData);

      // Calculate progress stats
      let totalLessons = 0;
      let lessonsWithProgress = 0;
      
      for (const story of storiesData) {
        totalLessons += story.lessons.length;
        const progress = await queries.getStoryProgress(user.id, story.id);
        lessonsWithProgress += progress.length;
      }

      setStats(prev => ({
        ...prev,
        totalStories: storiesData.length,
        totalLessons,
        lessonsStudied: lessonsWithProgress,
        storiesCompleted: storiesData.filter(s => s.lessons.length > 0).length // Simplified for MVP
      }));

    } catch (error) {
      console.error('Failed to load dashboard data:', error);
    } finally {
      setIsLoading(false);
    }
  };

  if (loading || isLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 p-4">
        <div className="max-w-6xl mx-auto">
          <div className="animate-pulse">
            <div className="h-8 bg-gray-300 rounded w-64 mb-8"></div>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
              {[1, 2, 3].map(i => (
                <div key={i} className="h-32 bg-gray-300 rounded-lg"></div>
              ))}
            </div>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 p-4">
      <div className="max-w-6xl mx-auto">
        {/* Header */}
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-gray-800 mb-2">
            Welcome back! 👋
          </h1>
          <p className="text-gray-600">
            Continue your ASL learning journey with story-based lessons
          </p>
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
                <span className="text-gray-600">Lessons Studied:</span>
                <span className="font-semibold text-blue-600">
                  {stats.lessonsStudied}/{stats.totalLessons}
                </span>
              </div>
              <div className="w-full bg-gray-200 rounded-full h-2">
                <div 
                  className="bg-blue-600 h-2 rounded-full"
                  style={{ 
                    width: `${stats.totalLessons > 0 ? (stats.lessonsStudied / stats.totalLessons) * 100 : 0}%` 
                  }}
                />
              </div>
            </div>
          </div>

          <div className="bg-white rounded-lg shadow-md p-6">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-lg font-semibold text-gray-800">Current Streak</h3>
              <Award className="w-6 h-6 text-yellow-600" />
            </div>
            <div className="text-center">
              <div className="text-3xl font-bold text-yellow-600 mb-1">
                {stats.currentStreak}
              </div>
              <div className="text-gray-600 text-sm">days in a row</div>
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
                      {story.lessons.length} lessons
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
          <h2 className="text-xl font-semibold text-gray-800 mb-4">Continue Learning</h2>
          <div className="text-gray-600 text-center py-8">
            <BookOpen className="w-12 h-12 mx-auto mb-4 text-gray-400" />
            <p>Start a story above to begin tracking your progress!</p>
          </div>
        </div>
      </div>
    </div>
  );
}