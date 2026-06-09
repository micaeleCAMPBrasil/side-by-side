import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotifications {
  static final _firebaseMessaging = FirebaseMessaging.instance;
  static final _localNotifications = FlutterLocalNotificationsPlugin();

  /// Inicializa FCM
  static Future init(GlobalKey<NavigatorState> navigatorKey) async {
    // Solicita permissão no mobile
    await _firebaseMessaging.requestPermission();
    await _initLocalNotifications();

    // Pega o token
    await getToken();

    // Escuta mensagens em todos os cenários
    listenForegroundMessages(navigatorKey);
    listenBackgroundMessages();
  }

  /// Obtém token do usuário
  static Future<String?> getToken() async {
    try {
      final token = await _firebaseMessaging.getToken();
      debugPrint("🔑 Token do dispositivo: $token");
      return token;
    } catch (e) {
      debugPrint("❌ Erro ao obter token: $e");
      return null;
    }
  }

  /// Quando o app está ABERTO (foreground)
  static void listenForegroundMessages(GlobalKey<NavigatorState> navigatorKey) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      debugPrint("📩 Mensagem no foreground: ${message.notification?.title}");

      // Salva no Firestore
      saveNotificationToFirestore(message);

      // Mostra SnackBar se o app estiver aberto
      final context = navigatorKey.currentContext;
      if (context != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "${message.notification?.title ?? 'Nova notificação'}\n"
              "${message.notification?.body ?? ''}",
            ),
            duration: const Duration(seconds: 5),
          ),
        );
      } else {
        // Fallback: mostra notificação local
        _showLocalNotification(message);
      }
    });
  }

  /// Quando o app está em BACKGROUND ou foi ABERTO por notificação
  static void listenBackgroundMessages() {
    // App em background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint("📲 Usuário clicou na notificação: ${message.data}");
    });

    // App fechado totalmente
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        debugPrint("🚀 App aberto por notificação: ${message.data}");
      }
    });
  }

  /// Mostra notificação local (fallback mobile)
  static void _showLocalNotification(RemoteMessage message) {
    _localNotifications.show(
      0,
      message.notification?.title,
      message.notification?.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'channel_id',
          'Notificações',
          importance: Importance.max,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
        ),
        iOS: DarwinNotificationDetails(),
      ),
    );
  }

  /// Inicializa plugin de notificações locais
  static Future _initLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const iosSettings = DarwinInitializationSettings();
    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(settings);
  }

  /// Salva notificações no Firestore
  static void saveNotificationToFirestore(RemoteMessage message) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    try {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .collection("notifications")
          .add({
            "title": message.notification?.title ?? "Sem título",
            "body": message.notification?.body ?? "Sem conteúdo",
            "data": message.data,
            "timestamp": FieldValue.serverTimestamp(),
          });
      debugPrint("✅ Notificação salva no Firestore");
    } catch (e) {
      debugPrint("❌ Erro ao salvar notificação: $e");
    }
  }
}
