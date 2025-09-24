// Core database types for SignLearn Pro
export type SubscriptionTier = 'free' | 'premium' | 'enterprise';

export type Language = 'english' | 'spanish' | 'french' | 'italian' | 'portuguese';

export type LogLevel = 'debug' | 'info' | 'warning' | 'error';

export type LogContext = 'auth' | 'flashcard' | 'ai' | 'user' | 'study' | 'system';

// User Profile
export interface Profile {
  id: string;
  email: string;
  full_name?: string;
  avatar_url?: string;
  learning_goals?: string[];
  subscription_tier: SubscriptionTier;
  preferred_language: Language;
  created_at: string;
  updated_at: string;
}

// Story and Lesson Content
export interface Story {
  id: string;
  title: string;
  description: string;
  difficulty_level: number;
  story_order: number;
  is_active: boolean;
  thumbnail_url?: string;
  created_at: string;
  updated_at: string;
}

export interface StoryLesson {
  id: string;
  story_id: string;
  lesson_order: number;
  english_verb: string;
  spanish_verb: string;
  french_verb: string;
  italian_verb: string;
  portuguese_verb: string;
  english_sentence: string;
  spanish_sentence: string;
  french_sentence: string;
  italian_sentence: string;
  portuguese_sentence: string;
  mux_playback_id?: string;
  created_at: string;
  updated_at: string;
}

// Progress Tracking
export interface UserProgress {
  id: string;
  user_id: string;
  story_id: string;
  lesson_id: string;
  mastery_level: number;
  times_studied: number;
  correct_attempts: number;
  incorrect_attempts: number;
  last_studied_at?: string;
  created_at: string;
  updated_at: string;
}

export interface LearningSession {
  id: string;
  user_id: string;
  story_id: string;
  session_start: string;
  session_end?: string;
  lessons_completed: number;
  accuracy_score: number;
  total_time_seconds: number;
  device_type: string;
  created_at: string;
}

// Extended types with relations
export interface StoryWithLessons extends Story {
  lessons: StoryLesson[];
}

export interface LessonWithProgress extends StoryLesson {
  progress?: UserProgress;
}

export interface StoryWithProgress extends Story {
  lessons: LessonWithProgress[];
  user_progress: UserProgress[];
}

// UI State Types
export interface StudyState {
  currentStory?: Story;
  currentLesson?: StoryLesson;
  currentLessonIndex: number;
  showAnswer: boolean;
  selectedLanguage: Language;
  isPlaying: boolean;
  sessionStartTime?: Date;
}

// API Response Types
export interface ApiResponse<T> {
  data?: T;
  error?: string;
  message?: string;
}

export interface ProgressStats {
  storiesCompleted: number;
  totalStories: number;
  lessonsStudied: number;
  totalLessons: number;
  currentStreak: number;
  averageAccuracy: number;
  totalStudyTime: number;
}

// Logging Types
export interface SystemLog {
  id: string;
  context: LogContext;
  level: LogLevel;
  message: string;
  user_id?: string;
  request_id?: string;
  metadata: Record<string, unknown>;
  timestamp: string;
}

export interface AnalyticsEvent {
  id: string;
  user_id?: string;
  event_type: string;
  properties: Record<string, unknown>;
  request_id?: string;
  timestamp: string;
}

// Form Types
export interface ProfileUpdateForm {
  full_name: string;
  learning_goals: string[];
  preferred_language: Language;
}

export interface StudySessionResult {
  lessonId: string;
  timeSpent: number;
  wasCorrect: boolean;
  difficultyRating?: number;
}