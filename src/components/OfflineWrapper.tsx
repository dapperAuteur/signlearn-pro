'use client';

import { useOffline } from '@/hooks/useOffline';
import { WifiOff } from 'lucide-react';

export function OfflineWrapper({ children }: { children: React.ReactNode }) {
  const { isOffline } = useOffline();

  return (
    <>
      {isOffline && (
        <div className="bg-yellow-100 border-b border-yellow-200 px-4 py-2 text-center">
          <div className="flex items-center justify-center text-yellow-800 text-sm">
            <WifiOff className="w-4 h-4 mr-2" />
            You're offline - using cached content
          </div>
        </div>
      )}
      {children}
    </>
  );
}