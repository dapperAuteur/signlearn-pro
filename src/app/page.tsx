import Link from 'next/link';
import { Play, BookOpen, Globe, TrendingUp, Users, Award, ChevronRight } from 'lucide-react';

export default function HomePage() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 via-white to-indigo-50">
      {/* Header */}
      <header className="bg-white shadow-sm">
        <div className="max-w-6xl mx-auto px-4 py-4 flex items-center justify-between">
          <div className="flex items-center space-x-2">
            <div className="w-10 h-10 bg-blue-600 rounded-lg flex items-center justify-center">
              <BookOpen className="w-6 h-6 text-white" />
            </div>
            <h1 className="text-2xl font-bold text-gray-800">SignLearn Pro</h1>
          </div>
          <div className="flex items-center space-x-4">
            <Link href="/login" className="text-gray-600 hover:text-gray-800">
              Log In
            </Link>
            <Link href="/signup" className="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors">
              Get Started
            </Link>
          </div>
        </div>
      </header>

      {/* Hero Section */}
      <section className="py-20 px-4">
        <div className="max-w-6xl mx-auto text-center">
          <h1 className="text-5xl font-bold text-gray-900 mb-6">
            Learn ASL Through
            <span className="text-blue-600"> Interactive Stories</span>
          </h1>
          <p className="text-xl text-gray-600 mb-8 max-w-3xl mx-auto">
            Master American Sign Language with engaging video demonstrations, 
            multilingual context, and progress tracking. Join Curb Appeall's adventures 
            while learning 353 essential verbs.
          </p>
          <div className="flex items-center justify-center space-x-4">
            <Link href="/signup" className="bg-blue-600 text-white px-8 py-4 rounded-lg text-lg font-semibold hover:bg-blue-700 transition-colors flex items-center">
              <Play className="w-5 h-5 mr-2" />
              Start Learning Free
            </Link>
            <Link href="/demo" className="border-2 border-gray-300 text-gray-700 px-8 py-4 rounded-lg text-lg font-semibold hover:border-gray-400 transition-colors">
              Watch Demo
            </Link>
          </div>
          <p className="text-sm text-gray-500 mt-4">No credit card required • Start with 30 free lessons</p>
        </div>
      </section>

      {/* Key Benefits */}
      <section className="py-16 px-4 bg-white">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-3xl font-bold text-center text-gray-900 mb-12">
            Why Choose SignLearn Pro?
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="text-center p-6">
              <div className="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <BookOpen className="w-8 h-8 text-blue-600" />
              </div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">Story-Based Learning</h3>
              <p className="text-gray-600">
                Learn ASL through engaging stories about Curb Appeall and friends. 
                Context makes vocabulary stick better than flashcards alone.
              </p>
            </div>

            <div className="text-center p-6">
              <div className="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <Play className="w-8 h-8 text-green-600" />
              </div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">Video Demonstrations</h3>
              <p className="text-gray-600">
                Watch professional ASL demonstrations for each verb. 
                Learn proper hand shapes, movement, and facial expressions.
              </p>
            </div>

            <div className="text-center p-6">
              <div className="w-16 h-16 bg-purple-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <Globe className="w-8 h-8 text-purple-600" />
              </div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">5 Languages</h3>
              <p className="text-gray-600">
                Practice with English, Spanish, French, Italian, and Portuguese context. 
                Perfect for multilingual learners and educators.
              </p>
            </div>

            <div className="text-center p-6">
              <div className="w-16 h-16 bg-yellow-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <TrendingUp className="w-8 h-8 text-yellow-600" />
              </div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">Smart Progress Tracking</h3>
              <p className="text-gray-600">
                Track your mastery of each sign. Our algorithm adapts to show you 
                words that need more practice.
              </p>
            </div>

            <div className="text-center p-6">
              <div className="w-16 h-16 bg-red-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <Users className="w-8 h-8 text-red-600" />
              </div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">Accessible Design</h3>
              <p className="text-gray-600">
                Built with the deaf and hard-of-hearing community. 
                WCAG 2.1 AA compliant with high contrast and clear visuals.
              </p>
            </div>

            <div className="text-center p-6">
              <div className="w-16 h-16 bg-indigo-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <Award className="w-8 h-8 text-indigo-600" />
              </div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">Proven Method</h3>
              <p className="text-gray-600">
                Research-backed approach using spaced repetition and contextual learning 
                for maximum retention.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* How It Works */}
      <section className="py-16 px-4 bg-gray-50">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-3xl font-bold text-center text-gray-900 mb-12">
            How It Works
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="bg-white rounded-lg p-6 shadow-sm">
              <div className="text-blue-600 text-2xl font-bold mb-4">01</div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">Choose Your Story</h3>
              <p className="text-gray-600 mb-4">
                Start with beginner-friendly stories and progress to advanced topics. 
                Each story contains 25-30 related verbs.
              </p>
              <div className="bg-blue-50 rounded-lg p-3 text-sm text-blue-800">
                "Curb Appeall helps Platypus prepare a healthy picnic"
              </div>
            </div>

            <div className="bg-white rounded-lg p-6 shadow-sm">
              <div className="text-green-600 text-2xl font-bold mb-4">02</div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">Watch & Practice</h3>
              <p className="text-gray-600 mb-4">
                Watch ASL demonstrations, then practice the signs. 
                Rate your confidence to help our algorithm track progress.
              </p>
              <div className="flex space-x-2">
                <button className="bg-green-100 text-green-800 px-3 py-1 rounded text-sm">Got It!</button>
                <button className="bg-yellow-100 text-yellow-800 px-3 py-1 rounded text-sm">Need Practice</button>
              </div>
            </div>

            <div className="bg-white rounded-lg p-6 shadow-sm">
              <div className="text-purple-600 text-2xl font-bold mb-4">03</div>
              <h3 className="text-xl font-semibold text-gray-900 mb-3">Track Progress</h3>
              <p className="text-gray-600 mb-4">
                See your mastery level for each sign. Build streaks and 
                unlock advanced stories as you improve.
              </p>
              <div className="bg-purple-50 rounded-lg p-3">
                <div className="flex justify-between text-sm text-purple-800">
                  <span>Progress</span>
                  <span>85%</span>
                </div>
                <div className="w-full bg-purple-200 rounded-full h-2 mt-1">
                  <div className="bg-purple-600 h-2 rounded-full" style={{ width: '85%' }}></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Stats Section */}
      <section className="py-16 px-4 bg-white">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-3xl font-bold text-gray-900 mb-12">
            Start Your ASL Journey Today
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-12">
            <div>
              <div className="text-4xl font-bold text-blue-600 mb-2">353</div>
              <div className="text-gray-600">Essential Verbs</div>
            </div>
            <div>
              <div className="text-4xl font-bold text-green-600 mb-2">12</div>
              <div className="text-gray-600">Interactive Stories</div>
            </div>
            <div>
              <div className="text-4xl font-bold text-purple-600 mb-2">5</div>
              <div className="text-gray-600">Languages Supported</div>
            </div>
          </div>
          <Link href="/signup" className="bg-blue-600 text-white px-8 py-4 rounded-lg text-lg font-semibold hover:bg-blue-700 transition-colors inline-flex items-center">
            Get Started Now
            <ChevronRight className="w-5 h-5 ml-2" />
          </Link>
          <p className="text-gray-500 mt-4">Join thousands learning ASL the engaging way</p>
        </div>
      </section>

      {/* Footer */}
      <footer className="bg-gray-800 text-white py-12 px-4">
        <div className="max-w-6xl mx-auto">
          <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
            <div>
              <div className="flex items-center space-x-2 mb-4">
                <div className="w-8 h-8 bg-blue-600 rounded flex items-center justify-center">
                  <BookOpen className="w-5 h-5 text-white" />
                </div>
                <span className="text-xl font-bold">SignLearn Pro</span>
              </div>
              <p className="text-gray-400 text-sm">
                Making ASL learning accessible and engaging through interactive stories.
              </p>
            </div>
            
            <div>
              <h4 className="font-semibold mb-3">Product</h4>
              <ul className="space-y-2 text-sm text-gray-400">
                <li><Link href="/features" className="hover:text-white">Features</Link></li>
                <li><Link href="/pricing" className="hover:text-white">Pricing</Link></li>
                <li><Link href="/demo" className="hover:text-white">Demo</Link></li>
              </ul>
            </div>
            
            <div>
              <h4 className="font-semibold mb-3">Support</h4>
              <ul className="space-y-2 text-sm text-gray-400">
                <li><Link href="/help" className="hover:text-white">Help Center</Link></li>
                <li><Link href="/contact" className="hover:text-white">Contact</Link></li>
                <li><Link href="/accessibility" className="hover:text-white">Accessibility</Link></li>
              </ul>
            </div>
            
            <div>
              <h4 className="font-semibold mb-3">Company</h4>
              <ul className="space-y-2 text-sm text-gray-400">
                <li><Link href="/about" className="hover:text-white">About</Link></li>
                <li><Link href="/privacy" className="hover:text-white">Privacy</Link></li>
                <li><Link href="/terms" className="hover:text-white">Terms</Link></li>
              </ul>
            </div>
          </div>
          
          <div className="border-t border-gray-700 mt-8 pt-8 text-center text-gray-400 text-sm">
            <p>&copy; 2025 SignLearn Pro. Built with accessibility and the ASL community in mind.</p>
          </div>
        </div>
      </footer>
    </div>
  );
}