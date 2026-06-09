// push_notifications.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotificationsWeb {
  static final _firebaseMessaging = FirebaseMessaging.instance;
  static final _localNotifications = FlutterLocalNotificationsPlugin();

  /// 🔥 Inicializa FCM para Web
  static Future init({required GlobalKey<NavigatorState> navigatorKeys}) async {
    /*if (!kIsWeb) return; // Só roda no Web

    //await requestPermission();
    await getToken();
    listenForegroundMessages();*/

    // Mobile: inicializa notificações locais
    if (!kIsWeb) {
      const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
      const iosInit = DarwinInitializationSettings();
      const initSettings = InitializationSettings(
        android: androidInit,
        iOS: iosInit,
      );
      await _localNotifications.initialize(initSettings);
    }

    // Pega token
    await getToken();

    // Escuta mensagens foreground
    listenForegroundMessages(navigatorKeys);
  }

  /// 📲 Obtem o token FCM
  static Future<String?> getToken() async {
    try {
      String? token = await _firebaseMessaging.getToken();
      if (token != null) {
        debugPrint('🔑 Token do dispositivo: $token');
        return token;
      } else {
        debugPrint('⚠️ Usuário não permitiu notificações.');
        return null;
      }
    } catch (e) {
      debugPrint('❌ Erro ao obter token: $e');
      return null;
    }
  }

  /// 🛑 Escuta mensagens quando o app está aberto (foreground)
  static void listenForegroundMessages(GlobalKey<NavigatorState> navigatorKey) {
    /*FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('📩 Mensagem recebida no foreground');
      debugPrint('🔔 Título: ${message.notification?.title}');
      debugPrint('📝 Corpo: ${message.notification?.body}');
      debugPrint('📦 Dados: ${message.data}');

      // Aqui você pode mostrar um snackbar, dialog ou atualizar o estado
      saveNotificationToFirestore(message);
      // Mostrar notificação local
      FlutterLocalNotificationsPlugin().show(
        0,
        message.notification?.title,
        message.notification?.body,
        NotificationDetails(
          android: AndroidNotificationDetails('channel_id', 'channel_name'),
        ),
      );

      // 👉 Mostra um Snackbar ou dialog no Flutter
      final context = navigatorKey.currentContext;
      if (context != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "${message.notification?.title}\n${message.notification?.body}",
            ),
            duration: Duration(seconds: 5),
          ),
        );
      }
    });*/

    final context = navigatorKey.currentState?.overlay?.context;

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('📩 Mensagem recebida no foreground');
      debugPrint('🔔 Título: ${message.notification?.title}');
      debugPrint('📝 Corpo: ${message.notification?.body}');
      debugPrint('📦 Dados: ${message.data}');

      // Salva no Firestore
      saveNotificationToFirestore(message);
      if (context != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "${message.notification?.title ?? 'Nova notificação'}\n${message.notification?.body ?? ''}",
            ),
            duration: const Duration(seconds: 5),
          ),
        );
      } else {
        // fallback: se não tiver contexto, mostra notificação local
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
    });

    /*if (kIsWeb) {
        // 👉 No Web, mostra SnackBar
        final context = navigatorKey.currentContext;
        if (context != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "${message.notification?.title ?? 'Nova notificação'}\n${message.notification?.body ?? ''}",
              ),
              duration: const Duration(seconds: 5),
            ),
          );
        }
      } else {
        // 👉 No Mobile, mostra notificação local
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

        final context = navigatorKey.currentContext;
        if (context != null) {
          ScaffoldMessenger.of(context!).showSnackBar(
            SnackBar(
              content: Text(
                "${message.notification?.title ?? 'Nova notificação'}\n${message.notification?.body ?? ''}",
              ),
              duration: const Duration(seconds: 5),
            ),
          );
        }
      }*/
    //});
  }

  static void saveNotificationToFirestore(RemoteMessage message) async {
    final user = FirebaseAuth.instance.currentUser;
    final token = await FirebaseMessaging.instance.getToken();
    try {
      if (user != null && token != null) {
        final uid = user.uid;
        await FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .collection('notifications')
            .add({
              'title': message.notification?.title ?? 'Sem título',
              'body': message.notification?.body ?? 'Sem conteúdo',
              'data':
                  message.data, // opcional, se quiser salvar os dados extras
              'timestamp': FieldValue.serverTimestamp(),
            });
        debugPrint('Notificação salva');
      }
    } catch (e) {
      debugPrint('Erro ao salvar notificação: $e');
    }
  }

  static void deleteAllNotifications(String userId) {
    final collection = FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('notifications');

    collection.get().then((snapshot) {
      for (DocumentSnapshot doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
  }

  static void deleteNotification(String userId, String notificationId) {
    final docRef = FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('notifications')
        .doc(notificationId);

    docRef
        .delete()
        .then((_) {
          debugPrint('Notificação excluída com sucesso!');
        })
        .catchError((error) {
          debugPrint('Erro ao excluir notificação: $error');
        });
  }
}
