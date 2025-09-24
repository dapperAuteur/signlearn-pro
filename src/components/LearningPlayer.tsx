'use client';

import React, { useState, useEffect } from 'react';
import MuxPlayer from '@mux/mux-player-react';
import { ChevronLeft, ChevronRight, Play, Eye, Volume2, Settings } from 'lucide-react';
import { queries } from '@/lib/supabase/client';
import { useAuth } from '@/hooks/useAuth';
import { 
  type StoryLesson, 
  type Language, 
  type UserProgress,
  type LearningSession 
} from '@/types/database';

interface LearningPlayerProps {
  lessons: StoryLesson[];
  storyId: string;
  onProgress?: (progress: UserProgress) => void;
}

export function LearningPlayer({ 
  lessons, 
  storyId, 
  onProgress 
}: LearningPlayerProps) {
  const { user } = useAuth();
  const [currentIndex, setCurrentIndex] = useState(0);
  const [showAnswer, setShowAnswer] = useState(false);
  const [selectedLanguage, setSelectedLanguage] = useState<Language>('english');
  const [isPlaying, setIsPlaying] = useState(false);
  const [session, setSession] = useState<LearningSession | null>(null);
  const [sessionStats, setSessionStats] = useState({
    correct: 0,
    total: 0,
    startTime: Date.now()
  });

  const currentLesson = lessons[currentIndex];

  // Initialize session on component mount
  useEffect(() => {
    if (user) {
      initializeSession();
    }
  }, [user, storyId]);

  const initializeSession = async () => {
    if (!user) return;
    
    try {
      const newSession = await queries.createLearningSession(user.id, storyId) as LearningSession;
      setSession(newSession);
      setSessionStats(prev => ({ ...prev, startTime: Date.now() }));
    } catch (error) {
      console.error('Failed to create session:', error);
    }
  };

  const handleAnswerSubmit = async (wasCorrect: boolean) => {
    if (!user || !currentLesson) {
      // Guest mode - just update session stats without saving to database
      setSessionStats(prev => ({
        ...prev,
        correct: wasCorrect ? prev.correct + 1 : prev.correct,
        total: prev.total + 1
      }));
      
      // Auto-advance after correct answer
      if (wasCorrect && currentIndex < lessons.length - 1) {
        setTimeout(() => nextLesson(), 1500);
      }
      return;
    }

    try {
      // Update lesson progress
      const progress = await queries.updateLessonProgress(
        user.id,
        currentLesson.id,
        storyId,
        wasCorrect
      ) as UserProgress;

      // Update session stats
      setSessionStats(prev => ({
        ...prev,
        correct: wasCorrect ? prev.correct + 1 : prev.correct,
        total: prev.total + 1
      }));

      onProgress?.(progress);
      
      // Auto-advance after correct answer
      if (wasCorrect && currentIndex < lessons.length - 1) {
        setTimeout(() => nextLesson(), 1500);
      }
    } catch (error) {
      console.error('Failed to update progress:', error);
    }
  };

  const nextLesson = () => {
    if (currentIndex < lessons.length - 1) {
      setCurrentIndex(currentIndex + 1);
      setShowAnswer(false);
      setIsPlaying(false);
    }
  };

  const prevLesson = () => {
    if (currentIndex > 0) {
      setCurrentIndex(currentIndex - 1);
      setShowAnswer(false);
      setIsPlaying(false);
    }
  };

  const endSession = async () => {
    if (!session || !user) return;

    const totalTimeSeconds = Math.floor((Date.now() - sessionStats.startTime) / 1000);
    const accuracyScore = sessionStats.total > 0 
      ? (sessionStats.correct / sessionStats.total) * 100 
      : 0;

    try {
      await queries.endLearningSession(
        session.id,
        sessionStats.total,
        accuracyScore,
        totalTimeSeconds
      );
    } catch (error) {
      console.error('Failed to end session:', error);
    }
  };

  // End session on unmount
  useEffect(() => {
    return () => {
      endSession();
    };
  }, []);

  const getLocalizedText = (type: 'verb' | 'sentence') => {
    if (!currentLesson) return '';
    
    const key = `${selectedLanguage}_${type === 'verb' ? 'verb' : 'sentence'}` as keyof StoryLesson;
    return currentLesson[key] as string;
  };

  return (
    <div className="max-w-4xl mx-auto bg-white rounded-lg shadow-lg overflow-hidden">
      {/* Header */}
      <div className="bg-blue-600 text-white p-4">
        <div className="flex items-center justify-between">
          <h2 className="text-xl font-semibold">
            Lesson {currentIndex + 1} of {lessons.length}
          </h2>
          
          {/* Language Selector */}
          <div className="flex space-x-1">
            {(['english', 'spanish', 'french', 'italian', 'portuguese'] as Language[]).map((lang) => (
              <button
                key={lang}
                onClick={() => setSelectedLanguage(lang)}
                className={`px-2 py-1 text-xs rounded capitalize ${
                  selectedLanguage === lang
                    ? 'bg-white text-blue-600'
                    : 'bg-blue-500 hover:bg-blue-400'
                }`}
              >
                {lang}
              </button>
            ))}
          </div>
        </div>

        {/* Progress Bar */}
        <div className="mt-3">
          <div className="w-full bg-blue-700 rounded-full h-2">
            <div 
              className="bg-white h-2 rounded-full transition-all duration-300"
              style={{ width: `${((currentIndex + 1) / lessons.length) * 100}%` }}
            />
          </div>
        </div>
      </div>

      {/* Video Player */}
      <div className="bg-black">
        {currentLesson?.mux_playback_id ? (
          <MuxPlayer
            playbackId={currentLesson.mux_playback_id}
            metadata={{
              video_title: `Sign Language: ${getLocalizedText('verb')}`,
              viewer_user_id: user?.id
            }}
            streamType="on-demand"
            onPlay={() => setIsPlaying(true)}
            onPause={() => setIsPlaying(false)}
            onEnded={() => setIsPlaying(false)}
            className="w-full aspect-video"
          />
        ) : (
          // Fallback for lessons without video
          <div className="w-full aspect-video flex items-center justify-center bg-gray-900">
            <div className="text-center text-white">
              <Volume2 className="w-16 h-16 mx-auto mb-4 text-gray-400" />
              <h3 className="text-xl font-semibold mb-2">
                Practice: "{getLocalizedText('verb')}"
              </h3>
              <p className="text-gray-400">
                Video demonstration coming soon
              </p>
              <button
                onClick={() => setIsPlaying(!isPlaying)}
                className="mt-4 px-6 py-2 bg-blue-600 hover:bg-blue-700 rounded-lg transition-colors flex items-center gap-2 mx-auto"
              >
                <Play className="w-4 h-4" />
                Practice Sign
              </button>
            </div>
          </div>
        )}
      </div>

      {/* Content */}
      <div className="p-6">
        {/* Current Word */}
        <div className="mb-6">
          <h3 className="text-lg font-semibold text-gray-800 mb-2">
            Word to Practice
          </h3>
          <div className="bg-yellow-100 p-4 rounded-lg border-l-4 border-yellow-500">
            <p className="text-2xl font-bold text-yellow-800 text-center">
              {getLocalizedText('verb')}
            </p>
          </div>
        </div>

        {/* Story Context */}
        <div className="mb-6">
          <h4 className="text-md font-semibold text-gray-700 mb-2">
            Story Context ({selectedLanguage})
          </h4>
          <div className="bg-gray-50 p-4 rounded-lg">
            <p className="text-gray-800 leading-relaxed">
              {getLocalizedText('sentence')}
            </p>
          </div>
        </div>

        {/* Answer Reveal */}
        {showAnswer && (
          <div className="mb-6 animate-in slide-in-from-top duration-300">
            <h4 className="text-md font-semibold text-gray-700 mb-2">
              All Translations
            </h4>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-2">
              {[
                { lang: 'english', verb: currentLesson?.english_verb, color: 'blue' },
                { lang: 'spanish', verb: currentLesson?.spanish_verb, color: 'red' },
                { lang: 'french', verb: currentLesson?.french_verb, color: 'purple' },
                { lang: 'italian', verb: currentLesson?.italian_verb, color: 'green' },
                { lang: 'portuguese', verb: currentLesson?.portuguese_verb, color: 'orange' }
              ].map(({ lang, verb, color }) => (
                <div key={lang} className={`p-2 bg-${color}-50 rounded`}>
                  <span className={`font-medium text-${color}-700 capitalize`}>
                    {lang}:
                  </span> {verb}
                </div>
              ))}
            </div>
          </div>
        )}

        {/* Action Buttons */}
        <div className="flex items-center justify-between gap-4">
          <button
            onClick={prevLesson}
            disabled={currentIndex === 0}
            className="flex items-center px-4 py-2 bg-gray-600 text-white rounded disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-700 transition-colors"
          >
            <ChevronLeft className="w-4 h-4 mr-1" />
            Previous
          </button>

          <div className="flex gap-2">
            <button
              onClick={() => setShowAnswer(!showAnswer)}
              className="p-2 bg-yellow-600 text-white rounded hover:bg-yellow-700 transition-colors"
              title="Toggle Answer"
            >
              <Eye className="w-5 h-5" />
            </button>
            
            <button
              onClick={() => handleAnswerSubmit(true)}
              className="px-4 py-2 bg-green-600 text-white rounded hover:bg-green-700 transition-colors"
            >
              Got It!
            </button>
            
            <button
              onClick={() => handleAnswerSubmit(false)}
              className="px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700 transition-colors"
            >
              Need Practice
            </button>
          </div>

          <button
            onClick={nextLesson}
            disabled={currentIndex === lessons.length - 1}
            className="flex items-center px-4 py-2 bg-blue-600 text-white rounded disabled:opacity-50 disabled:cursor-not-allowed hover:bg-blue-700 transition-colors"
          >
            Next
            <ChevronRight className="w-4 h-4 ml-1" />
          </button>
        </div>

        {/* Session Stats */}
        <div className="mt-4 p-3 bg-gray-100 rounded-lg">
          <div className="flex justify-between text-sm text-gray-600">
            <span>Session Progress: {sessionStats.correct}/{sessionStats.total} correct</span>
            <span>
              Accuracy: {sessionStats.total > 0 
                ? Math.round((sessionStats.correct / sessionStats.total) * 100)
                : 0}%
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}