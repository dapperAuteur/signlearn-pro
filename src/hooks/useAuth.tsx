'use client';

import { useState, useEffect, createContext, useContext } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { type User, type Session } from '@supabase/auth-helpers-nextjs';
import { type Profile } from '@/types/database';

interface AuthContextType {
  user: User | null;
  profile: Profile | null;
  session: Session | null;
  loading: boolean;
  signIn: (email: string, password: string) => Promise<{ error?: string }>;
  signUp: (email: string, password: string, metadata?: Record<string, any>) => Promise<{ error?: string }>;
  signOut: () => Promise<void>;
  updateProfile: (updates: Partial<Profile>) => Promise<{ error?: string }>;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export function AuthProvider({ children }: { children: React.ReactNode }) {
  const [user, setUser] = useState<User | null>(null);
  const [profile, setProfile] = useState<Profile | null>(null);
  const [session, setSession] = useState<Session | null>(null);
  const [loading, setLoading] = useState(true);
  
  const supabase = createClient();
  const router = useRouter();

  useEffect(() => {
    // Get initial session
    const getInitialSession = async () => {
      try {
        const { data: { session }, error } = await supabase.auth.getSession();
        
        if (error) {
          console.error('Session error:', error);
        } else if (session) {
          setSession(session);
          setUser(session.user);
          // Don't fetch profile for now to avoid additional errors
        }
      } catch (error) {
        console.error('Auth initialization error:', error);
      } finally {
        setLoading(false);
      }
    };

    getInitialSession();

    // Listen for auth changes
    const { data: { subscription } } = supabase.auth.onAuthStateChange(
      async (event, session) => {
        console.log('Auth event:', event, session?.user?.email);
        
        setSession(session);
        setUser(session?.user ?? null);
        
        // Only redirect on successful sign in, not other events
        if (event === 'SIGNED_IN' && session) {
          router.push('/dashboard');
        } else if (event === 'SIGNED_OUT') {
          setProfile(null);
          // Don't auto-redirect on sign out
        }
        
        setLoading(false);
      }
    );

    return () => subscription.unsubscribe();
  }, [router]);

  const signIn = async (email: string, password: string) => {
    try {      
      const { error } = await supabase.auth.signInWithPassword({
        email,
        password
      });

      if (error) {
        return { error: error.message };
      }

      return {};
    } catch (error) {
      return { error: 'Sign in failed' };
    }
    // Don't manage loading here - let auth state change handle it
  };

  const signUp = async (
    email: string, 
    password: string, 
    metadata: Record<string, any> = {}
  ) => {
    try {
      setLoading(true);
      
      const { error } = await supabase.auth.signUp({
        email,
        password,
        options: { data: metadata }
      });

      if (error) {
        setLoading(false);
        return { error: error.message };
      }

      setLoading(false);
      return {};
    } catch (error) {
      setLoading(false);
      return { error: 'Sign up failed' };
    }
  };

  const signOut = async () => {
    try {
      setLoading(true);
      await supabase.auth.signOut();
    } catch (error) {
      console.error('Sign out error:', error);
    }
    // Loading state will be handled by auth state change
  };

  const updateProfile = async (updates: Partial<Profile>) => {
    return { error: 'Profile updates not implemented in offline mode' };
  };

  const value: AuthContextType = {
    user,
    profile,
    session,
    loading,
    signIn,
    signUp,
    signOut,
    updateProfile
  };

  return (
    <AuthContext.Provider value={value}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (context === undefined) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
}