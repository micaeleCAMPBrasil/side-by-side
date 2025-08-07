importScripts('https://www.gstatic.com/firebasejs/10.12.2/firebase-app-compat.js');
importScripts('https://www.gstatic.com/firebasejs/10.12.2/firebase-messaging-compat.js');

firebase.initializeApp({
  apiKey: "AIzaSyCCpcwKxo-cARdTInztVI91LJWsg18fvrU",
  authDomain: "side-by-side-25dc9.firebaseapp.com",
  projectId: "side-by-side-25dc9",
  storageBucket: "side-by-side-25dc9.appspot.com",
  messagingSenderId: "529664438735",
  appId: "1:529664438735:web:67a200197a7566c935e2ba",
  measurementId: "G-V0PKT9KXEW"
});

const messaging = firebase.messaging();

// Força ativação imediata
self.addEventListener('install', event => {
  console.log('[SW] Instalado');
  self.skipWaiting();
});

self.addEventListener('activate', event => {
  console.log('[SW] Ativado');
  return self.clients.claim();
});

// Receber mensagem em background
messaging.onBackgroundMessage(payload => {
  console.log('[SW] Mensagem recebida no background:', payload);

  // Só mostra se não vier notification pronta (vem só data)
  if (!payload.notification && payload.data) {
    const notificationTitle = payload.data.title || 'Nova notificação';
    const notificationOptions = {
      body: payload.data.body || '',
      icon: '/icons/Icon-192.png',
      data: payload.data
    };
    self.registration.showNotification(notificationTitle, notificationOptions);
  }
});

// Quando o usuário clicar na notificação
self.addEventListener('notificationclick', event => {
  console.log('[SW] Notificação clicada.', event);
  event.notification.close();
  event.waitUntil(
    clients.matchAll({ type: 'window', includeUncontrolled: true }).then(clientList => {
      for (const client of clientList) {
        if (client.url === '/' && 'focus' in client) {
          return client.focus();
        }
      }
      if (clients.openWindow) {
        return clients.openWindow('/');
      }
    })
  );
});
