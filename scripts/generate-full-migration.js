// Script to generate complete migration with all 353 lessons
// Run with: node scripts/generate-full-migration.js

import { readFileSync, writeFileSync } from 'fs';
import { parse } from 'papaparse';

async function generateFullMigration() {
  try {
    // Read CSV file
    const csvContent = readFileSync('storyAndVerbs5Languages.csv', 'utf8');
    
    // Parse CSV
    const parsed = parse(csvContent, {
      header: true,
      skipEmptyLines: true
    });

    const lessons = parsed.data;
    console.log(`Processing ${lessons.length} lessons...`);

    // Generate SQL
    let sql = `-- Complete migration with all ${lessons.length} lessons from CSV
-- Generated on ${new Date().toISOString()}

-- Clear existing data
DELETE FROM story_lessons;
DELETE FROM user_progress;
DELETE FROM learning_sessions;
DELETE FROM stories;

-- Create 12 story parts (353 lessons ÷ 30 ≈ 12 stories)
`;

    // Create stories
    const lessonsPerStory = 30;
    const numStories = Math.ceil(lessons.length / lessonsPerStory);
    
    const storyInserts = [];
    for (let i = 0; i < numStories; i++) {
      const storyNum = i + 1;
      const startLesson = i * lessonsPerStory + 1;
      const endLesson = Math.min((i + 1) * lessonsPerStory, lessons.length);
      const lessonCount = endLesson - startLesson + 1;
      
      let difficulty = 1;
      if (storyNum > 3 && storyNum <= 7) difficulty = 2;
      if (storyNum > 7) difficulty = 3;
      
      storyInserts.push(`('Curb Appeall Story ${storyNum}', 'Learn ${lessonCount} verbs through Curb and friends adventures (lessons ${startLesson}-${endLesson})', ${difficulty}, ${storyNum}, 'https://images.unsplash.com/photo-${1540000000000 + i * 1000000}?w=400')`);
    }

    sql += `INSERT INTO stories (title, description, difficulty_level, story_order, thumbnail_url) VALUES\n${storyInserts.join(',\n')};\n\n`;
    sql += `-- Insert all ${lessons.length} lessons\n`;

    // Generate lesson inserts
    lessons.forEach((lesson, index) => {
      const storyNum = Math.floor(index / lessonsPerStory) + 1;
      const lessonOrder = (index % lessonsPerStory) + 1;
      
      // Escape single quotes for SQL
      const escape = (str) => str ? str.replace(/'/g, "''") : '';
      
      const englishVerb = lesson['English Translation - Meaning in English.'] || '';
      const spanishVerb = lesson['Spanish'] || '';
      const frenchVerb = lesson['French Translation - Meaning in French.'] || '';
      const italianVerb = lesson['Italian Translation - Meaning in Italian.'] || '';
      const portugueseVerb = lesson['Portuguese Translation - Meaning in Portuguese.'] || '';
      const englishSentence = lesson['English Sentence - Translation of the story sentence in English.'] || '';
      const spanishSentence = lesson['Spanish Sentence - Story sentence using the verb in Spanish.'] || '';
      const frenchSentence = lesson['French Sentence - Translation of the story sentence in French.'] || '';
      const italianSentence = lesson['Italian Sentence - Translation of the story sentence in Italian.'] || '';
      const portugueseSentence = lesson['Portuguese Sentence - Translation of the story sentence in Portuguese.'] || '';

      sql += `INSERT INTO story_lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, ${lessonOrder}, '${escape(englishVerb)}', '${escape(spanishVerb)}', '${escape(frenchVerb)}', '${escape(italianVerb)}', '${escape(portugueseVerb)}', '${escape(englishSentence)}', '${escape(spanishSentence)}', '${escape(frenchSentence)}', '${escape(italianSentence)}', '${escape(portugueseSentence)}'
FROM stories s WHERE s.title = 'Curb Appeall Story ${storyNum}';

`;
    });

    // Add performance optimizations
    sql += `-- Create indexes for performance with large dataset
CREATE INDEX idx_story_lessons_story_order ON story_lessons(story_id, lesson_order);
CREATE INDEX idx_user_progress_mastery ON user_progress(user_id, mastery_level);
CREATE INDEX idx_learning_sessions_recent ON learning_sessions(user_id, session_start);

-- Add constraints for data integrity
ALTER TABLE story_lessons ADD CONSTRAINT unique_story_lesson UNIQUE(story_id, lesson_order);
ALTER TABLE user_progress ADD CONSTRAINT progress_bounds CHECK (mastery_level >= 0 AND mastery_level <= 100);
`;

    // Write to file
    const outputPath = 'supabase/migrations/002_complete_story_data.sql';
    writeFileSync(outputPath, sql);
    
    console.log(`✅ Generated complete migration with ${lessons.length} lessons`);
    console.log(`📁 Saved to: ${outputPath}`);
    console.log(`📊 File size: ${(sql.length / 1024).toFixed(1)}KB`);
    console.log(`🔢 Stories created: ${numStories}`);

  } catch (error) {
    console.error('❌ Error generating migration:', error);
  }
}

// Run the generator
generateFullMigration();