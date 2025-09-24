import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import './globals.css'
import { AuthProvider } from '@/hooks/useAuth'
import { Analytics } from "@vercel/analytics/next"
import { OfflineWrapper } from '@/components/OfflineWrapper'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'SignLearn Pro - Learn ASL Through Interactive Stories',
  description: 'Master American Sign Language with engaging video demonstrations, multilingual context, and progress tracking.',
  icons: {
    icon: '/favicon.ico',
  },
  manifest: '/manifest.json',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <Analytics />
        <AuthProvider>
          <OfflineWrapper>
            {children}
          </OfflineWrapper>
        </AuthProvider>
      </body>
    </html>
  )
}