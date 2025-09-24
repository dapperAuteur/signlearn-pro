'use client';

import { useState, useEffect } from 'react';
import { offlineData } from '@/lib/storage/offline-data';

export function useOffline() {
  const [isOffline, setIsOffline] = useState(false);

  useEffect(() => {
    const updateOnlineStatus = async () => {
      const offline = !navigator.onLine;
      setIsOffline(offline);
      
      // Trigger sync when coming back online
      if (!offline) {
        console.log('Back online - syncing data...');
        try {
          await offlineData.syncWhenOnline();
        } catch (error) {
          console.error('Sync failed:', error);
        }
      }
    };

    // Check initial status
    updateOnlineStatus();

    // Listen for online/offline events
    window.addEventListener('online', updateOnlineStatus);
    window.addEventListener('offline', updateOnlineStatus);

    // Register service worker
    if ('serviceWorker' in navigator) {
      navigator.serviceWorker.register('/sw.js')
        .then((registration) => {
          console.log('SW registered:', registration);
        })
        .catch((error) => {
          console.log('SW registration failed:', error);
        });
    }

    return () => {
      window.removeEventListener('online', updateOnlineStatus);
      window.removeEventListener('offline', updateOnlineStatus);
    };
  }, []);

  return { isOffline };
}