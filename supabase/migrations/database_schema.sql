-- Enable necessary extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Users table (extends Supabase auth.users)
CREATE TABLE profiles (
  id UUID REFERENCES auth.users(id) PRIMARY KEY,
  email TEXT NOT NULL,
  full_name TEXT,
  avatar_url TEXT,
  learning_goals TEXT[],
  subscription_tier TEXT DEFAULT 'free' CHECK (subscription_tier IN ('free', 'premium', 'enterprise')),
  preferred_language TEXT DEFAULT 'english' CHECK (preferred_language IN ('english', 'spanish', 'french', 'italian', 'portuguese')),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Stories table (curriculum content)
CREATE TABLE stories (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  difficulty_level INTEGER CHECK (difficulty_level BETWEEN 1 AND 5),
  story_order INTEGER NOT NULL,
  is_active BOOLEAN DEFAULT true,
  thumbnail_url TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Story content (verb lessons within stories)
CREATE TABLE story_lessons (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  story_id UUID REFERENCES stories(id) ON DELETE CASCADE,
  lesson_order INTEGER NOT NULL,
  english_verb TEXT NOT NULL,
  spanish_verb TEXT NOT NULL,
  french_verb TEXT NOT NULL,
  italian_verb TEXT NOT NULL,
  portuguese_verb TEXT NOT NULL,
  english_sentence TEXT NOT NULL,
  spanish_sentence TEXT NOT NULL,
  french_sentence TEXT NOT NULL,
  italian_sentence TEXT NOT NULL,
  portuguese_sentence TEXT NOT NULL,
  mux_playback_id TEXT, -- Mux video ID for sign language demonstration
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- User progress tracking
CREATE TABLE user_progress (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  user_id UUID REFERENCES profiles(id) ON DELETE CASCADE,
  story_id UUID REFERENCES stories(id) ON DELETE CASCADE,
  lesson_id UUID REFERENCES story_lessons(id) ON DELETE CASCADE,
  mastery_level INTEGER DEFAULT 0 CHECK (mastery_level BETWEEN 0 AND 100),
  times_studied INTEGER DEFAULT 0,
  correct_attempts INTEGER DEFAULT 0,
  incorrect_attempts INTEGER DEFAULT 0,
  last_studied_at TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE(user_id, lesson_id)
);

-- Learning sessions (detailed tracking)
CREATE TABLE learning_sessions (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  user_id UUID REFERENCES profiles(id) ON DELETE CASCADE,
  story_id UUID REFERENCES stories(id) ON DELETE CASCADE,
  session_start TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  session_end TIMESTAMP WITH TIME ZONE,
  lessons_completed INTEGER DEFAULT 0,
  accuracy_score DECIMAL(5,2) DEFAULT 0.00,
  total_time_seconds INTEGER DEFAULT 0,
  device_type TEXT DEFAULT 'unknown',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- System logs (from your logging examples)
CREATE TABLE system_logs (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  context TEXT NOT NULL,
  level TEXT NOT NULL CHECK (level IN ('debug', 'info', 'warning', 'error')),
  message TEXT NOT NULL,
  user_id UUID REFERENCES profiles(id) ON DELETE SET NULL,
  request_id TEXT,
  metadata JSONB DEFAULT '{}',
  timestamp TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Analytics events
CREATE TABLE analytics_events (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  user_id UUID REFERENCES profiles(id) ON DELETE SET NULL,
  event_type TEXT NOT NULL,
  properties JSONB DEFAULT '{}',
  request_id TEXT,
  timestamp TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Row Level Security (RLS) policies
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_progress ENABLE ROW LEVEL SECURITY;
ALTER TABLE learning_sessions ENABLE ROW LEVEL SECURITY;

-- Profiles: Users can only see/edit their own profile
CREATE POLICY "Users can view own profile" ON profiles
  FOR SELECT USING (auth.uid() = id);

CREATE POLICY "Users can update own profile" ON profiles
  FOR UPDATE USING (auth.uid() = id);

-- User progress: Users can only see/edit their own progress
CREATE POLICY "Users can view own progress" ON user_progress
  FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own progress" ON user_progress
  FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own progress" ON user_progress
  FOR UPDATE USING (auth.uid() = user_id);

-- Learning sessions: Users can only see/edit their own sessions
CREATE POLICY "Users can view own sessions" ON learning_sessions
  FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own sessions" ON learning_sessions
  FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own sessions" ON learning_sessions
  FOR UPDATE USING (auth.uid() = user_id);

-- Stories and lessons are public (read-only for authenticated users)
CREATE POLICY "Anyone can view stories" ON stories
  FOR SELECT USING (auth.role() = 'authenticated');

CREATE POLICY "Anyone can view story lessons" ON story_lessons
  FOR SELECT USING (auth.role() = 'authenticated');

-- Insert initial story data
INSERT INTO stories (title, description, difficulty_level, story_order) VALUES
('Healthy Living Adventure', 'Join Curb Appeall and friends as they learn about nutrition and healthy choices', 1, 1),
('Community Garden Project', 'Learn about teamwork and growing healthy food together', 2, 2),
('Planning a Picnic', 'Practice verbs while planning the perfect healthy picnic', 1, 3);

-- Insert sample lessons for first story
INSERT INTO story_lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence) 
SELECT 
  s.id,
  1,
  'to help',
  'ayudar',
  'aider',
  'aiutare',
  'ajudar',
  'Curb Appeall helps Platypus prepare a healthy picnic.',
  'Curb Appeall ayuda a Platypus a preparar un picnic saludable.',
  'Curb Appeall aide Platypus à préparer un pique-nique.',
  'Curb Appeall aiuta Platypus a preparare un picnic.',
  'Curb Appeall ajuda o Platypus a preparar um piquenique.'
FROM stories s WHERE s.title = 'Healthy Living Adventure';

-- Create indexes for performance
CREATE INDEX idx_user_progress_user_id ON user_progress(user_id);
CREATE INDEX idx_user_progress_story_id ON user_progress(story_id);
CREATE INDEX idx_learning_sessions_user_id ON learning_sessions(user_id);
CREATE INDEX idx_system_logs_timestamp ON system_logs(timestamp);
CREATE INDEX idx_analytics_events_user_id ON analytics_events(user_id);
CREATE INDEX idx_analytics_events_event_type ON analytics_events(event_type);