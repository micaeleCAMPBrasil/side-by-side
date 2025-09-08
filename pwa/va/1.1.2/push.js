import { initializeApp } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-app.js";
import { getMessaging, getToken, onMessage } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-messaging.js";

const firebaseConfig = {
    apiKey: "AIzaSyCCpcwKxo-cARdTInztVI91LJWsg18fvrU",
    authDomain: "side-by-side-25dc9.firebaseapp.com",
    projectId: "side-by-side-25dc9",
    storageBucket: "side-by-side-25dc9.appspot.com",
    messagingSenderId: "529664438735",
    appId: "1:529664438735:web:67a200197a7566c935e2ba"
};

// Substitua pela chave pública do Firebase Console → Cloud Messaging → Web Push certificates
const VAPID_KEY = "BJivegimKLApNSYI4vig1_z-GslcD4uj2b9oRoEMww4YLsQiECl1h_B-Fe4ThOoSZvmpqElwT011gYnFW566nLQ";

const app = initializeApp(firebaseConfig);
const messaging = getMessaging(app);

async function pedirPermissaoENotificar(userId) {
    try {
        console.log('📲 Solicitando permissão para notificação...');
        const status = await Notification.requestPermission();

        if (status === 'granted') {
            console.log('✅ Permissão concedida! Pegando token...');

            const token = await getToken(messaging, {
                vapidKey: VAPID_KEY,
                serviceWorkerRegistration: await navigator.serviceWorker.ready
            });

            if (token) {
                console.log('✅ Token obtido:', token);

                const url = `https://sidebyside.campbrasil.com/api/php/update_token.php?token=${encodeURIComponent(token)}&id=${encodeURIComponent(userId)}`;

                // Envia o token para o backend
                await fetch(url, {
                    method: 'GET'
                })
                    .then(response => response.text())
                    .then(data => console.log('📦 Resposta do backend:', data))
                    .catch(err => console.error('❌ Erro ao salvar token:', err));
            } else {
                console.log('⚠️ Não foi possível obter o token.');
            }

            // (Opcional) Recebe mensagens em primeiro plano
            onMessage(messaging, (payload) => {
                console.log('📩 Mensagem recebida no foreground:', payload);
                alert(payload.notification?.title + '\n' + payload.notification?.body);
            });

        } else {
            console.log('❌ Permissão negada pelo usuário.');
        }

    } catch (error) {
        console.error('❗ Erro geral:', error);
    }
}

// Expõe para chamar do Flutter
window.pedirPermissaoENotificar = pedirPermissaoENotificar;
