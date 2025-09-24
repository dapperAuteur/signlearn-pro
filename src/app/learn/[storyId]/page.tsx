import { serverQueries } from '@/lib/supabase/server';
import { LearningPlayer } from '@/components/LearningPlayer';
import { ArrowLeft } from 'lucide-react';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { type StoryWithLessons } from '@/types/database';

interface LearnPageProps {
  params: {
    storyId: string;
  };
}

async function getStoryWithLessons(storyId: string): Promise<StoryWithLessons | null> {
  return serverQueries.getStoryWithLessons(storyId);
}

export default async function LearnPage({ params }: LearnPageProps) {
  const story = await getStoryWithLessons(params.storyId);

  if (!story) {
    notFound();
  }

  // Sort lessons by order
  const sortedLessons = story.lessons.sort((a, b) => a.lesson_order - b.lesson_order);

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100">
      {/* Navigation Header */}
      <div className="bg-white shadow-sm border-b">
        <div className="max-w-6xl mx-auto px-4 py-4">
          <div className="flex items-center justify-between">
            <Link 
              href="/dashboard"
              className="flex items-center text-gray-600 hover:text-gray-800 transition-colors"
            >
              <ArrowLeft className="w-5 h-5 mr-2" />
              Back to Dashboard
            </Link>
            
            <div className="text-center">
              <h1 className="text-xl font-semibold text-gray-800">
                {story.title}
              </h1>
              <p className="text-sm text-gray-600">
                Level {story.difficulty_level} • {sortedLessons.length} lessons
              </p>
            </div>
            
            <div className="w-24"></div> {/* Spacer for alignment */}
          </div>
        </div>
      </div>

      {/* Main Content */}
      <div className="p-4 pt-8">
        <LearningPlayer 
          lessons={sortedLessons}
          storyId={story.id}
        />
      </div>

      {/* Learning Tips Sidebar */}
      <div className="max-w-6xl mx-auto px-4 pb-8">
        <div className="bg-white rounded-lg shadow-md p-6 mt-6">
          <h3 className="text-lg font-semibold text-gray-800 mb-4">
            Learning Tips for "{story.title}"
          </h3>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4 text-sm text-gray-600">
            <div className="space-y-2">
              <div className="flex items-start">
                <span className="text-blue-500 mr-2">•</span>
                <span>Watch the sign demonstration carefully before practicing</span>
              </div>
              <div className="flex items-start">
                <span className="text-blue-500 mr-2">•</span>
                <span>Read the story context to understand when to use each word</span>
              </div>
            </div>
            <div className="space-y-2">
              <div className="flex items-start">
                <span className="text-blue-500 mr-2">•</span>
                <span>Practice with different languages to strengthen memory</span>
              </div>
              <div className="flex items-start">
                <span className="text-blue-500 mr-2">•</span>
                <span>Use "Need Practice" if you're unsure - it helps track progress</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

// Generate static params for better performance
export async function generateStaticParams() {
  const stories = await serverQueries.getAllStories();
  
  return stories.map((story: { id: string }) => ({
    storyId: story.id,
  }));
}

// Metadata for SEO
export async function generateMetadata({ params }: LearnPageProps) {
  const story = await getStoryWithLessons(params.storyId);
  
  if (!story) {
    return {
      title: 'Story Not Found - SignLearn Pro'
    };
  }

  return {
    title: `Learn: ${story.title} - SignLearn Pro`,
    description: story.description,
  };
}