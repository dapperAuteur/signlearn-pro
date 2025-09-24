/** @type {import('next').NextConfig} */
const nextConfig = {
  // Enable experimental features for better performance
  experimental: {
    serverComponentsExternalPackages: ['@mux/mux-node'],
  },
  
  // Security headers for production
  async headers() {
    return [
      {
        source: '/(.*)',
        headers: [
          {
            key: 'X-Frame-Options',
            value: 'DENY',
          },
          {
            key: 'X-Content-Type-Options',
            value: 'nosniff',
          },
          {
            key: 'Referrer-Policy',
            value: 'origin-when-cross-origin',
          },
          {
            key: 'Content-Security-Policy',
            value: "default-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://stream.mux.com; style-src 'self' 'unsafe-inline'; img-src 'self' data: https:; media-src 'self' https://stream.mux.com; connect-src 'self' https://*.supabase.co https://stream.mux.com;",
          },
        ],
      },
    ]
  },

  // Image optimization for accessibility and performance
  images: {
    domains: ['images.unsplash.com', 'stream.mux.com'],
    formats: ['image/webp', 'image/avif'],
  },

  // Enable strict mode for better error handling
  reactStrictMode: true,

  // Performance monitoring
  poweredByHeader: false,
}

export default nextConfig