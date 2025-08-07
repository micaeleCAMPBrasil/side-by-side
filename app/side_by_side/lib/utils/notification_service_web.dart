// push_notifications.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart'; // kIsWeb

class PushNotificationsWeb {
  static final _firebaseMessaging = FirebaseMessaging.instance;

  /// 🔥 Inicializa FCM para Web
  static Future init() async {
    if (!kIsWeb) return; // Só roda no Web

    //await requestPermission();
    await getToken();
    listenForegroundMessages();
  }

  /// 📲 Obtem o token FCM
  static Future<String?> getToken() async {
    String? token = await _firebaseMessaging.getToken();
    debugPrint('🔑 Token do dispositivo: $token');
    return token;
  }

  /// 🛑 Escuta mensagens quando o app está aberto (foreground)
  static void listenForegroundMessages() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
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
    });
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
