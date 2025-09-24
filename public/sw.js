const CACHE_NAME = 'signlearn-pro-v1';

self.addEventListener('install', (event) => {
  event.waitUntil(self.skipWaiting());
});

self.addEventListener('activate', (event) => {
  event.waitUntil(self.clients.claim());
});

self.addEventListener('fetch', (event) => {
  // Skip non-GET requests
  if (event.request.method !== 'GET') return;
  
  // Skip chrome-extension and other non-http requests
  if (!event.request.url.startsWith('http')) return;

  event.respondWith(
    caches.open(CACHE_NAME).then(cache => {
      return cache.match(event.request).then(response => {
        if (response) {
          return response;
        }

        return fetch(event.request).then(fetchResponse => {
          // Cache successful responses
          if (fetchResponse.status === 200) {
            // Clone response before caching
            const responseToCache = fetchResponse.clone();
            cache.put(event.request, responseToCache);
          }
          return fetchResponse;
        }).catch(() => {
          // Return fallback for different request types
          if (event.request.destination === 'document') {
            return new Response(`
              <!DOCTYPE html>
              <html>
                <head>
                  <title>Offline - SignLearn Pro</title>
                  <style>
                    body { 
                      font-family: system-ui, sans-serif; 
                      text-align: center; 
                      padding: 50px; 
                      background: linear-gradient(135deg, #dbeafe, #e0e7ff);
                    }
                    .offline-message {
                      max-width: 400px;
                      margin: 0 auto;
                      background: white;
                      padding: 30px;
                      border-radius: 10px;
                      box-shadow: 0 4px 6px rgba(0,0,0,0.1);
                    }
                  </style>
                </head>
                <body>
                  <div class="offline-message">
                    <h1>You're Offline</h1>
                    <p>SignLearn Pro is available offline, but this page hasn't been cached yet.</p>
                    <button onclick="window.location.href='/dashboard'">Go to Dashboard</button>
                  </div>
                </body>
              </html>
            `, {
              status: 200,
              headers: { 'Content-Type': 'text/html' }
            });
          }
          
          // For CSS/JS files, return empty but valid responses
          if (event.request.destination === 'style') {
            return new Response('/* Offline */', {
              status: 200,
              headers: { 'Content-Type': 'text/css' }
            });
          }
          
          if (event.request.destination === 'script') {
            return new Response('// Offline', {
              status: 200,
              headers: { 'Content-Type': 'text/javascript' }
            });
          }

          // For other resources, return empty response
          return new Response('', { status: 200 });
        });
      });
    })
  );
});