// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/notification_service_web.dart';

class ANotificationFragment extends StatefulWidget {
  const ANotificationFragment({super.key});

  @override
  State<ANotificationFragment> createState() => _ANotificationFragmentState();
}

class _ANotificationFragmentState extends State<ANotificationFragment> {
  Map payload = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Usuario usuario = Provider.of<UsuarioProvider>(context).getUsuario;
    final notificationsRef = FirebaseFirestore.instance
        .collection('users')
        .doc(usuario.uid)
        .collection('notifications')
        .orderBy('timestamp', descending: true);

    return RefreshIndicator(
      onRefresh: () {
        // ignore: void_checks
        return Future.value(true);
      },
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Notificações",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: appColorPrimary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () {
                    PushNotificationsWeb.deleteAllNotifications(usuario.uid);
                    debugPrint('delete all');
                  },
                  icon: Icon(
                    Icons.delete_outline_outlined,
                    color: iconColorPrimary,
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          StreamBuilder<QuerySnapshot>(
            stream: notificationsRef.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('Erro ao carregar notificações'),
                );
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              final docs = snapshot.data!.docs;

              if (docs.isEmpty) {
                return const Center(child: Text('Nenhuma notificação'));
              }

              return ListView.builder(
                itemCount: docs.length,
                shrinkWrap:
                    true, // ✅ Isso faz com que o ListView se encaixe na altura disponível
                physics:
                    const NeverScrollableScrollPhysics(), // ✅ Evita conflito de scroll
                itemBuilder: (context, index) {
                  final data = docs[index].data() as Map<String, dynamic>;

                  /*return ListTile(
                    title: Text(data['title'] ?? ''),
                    subtitle: Text(data['body'] ?? ''),
                    trailing: Text(
                      (data['timestamp'] as Timestamp?)
                              ?.toDate()
                              .toLocal()
                              .toString()
                              .substring(0, 16) ??
                          '',
                      style: const TextStyle(fontSize: 12),
                    ),
                  );*/
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.notifications,
                        color:
                            appStore.isDarkModeOn
                                ? iconColorPrimary
                                : iconColorSecondary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['body'] ?? '',
                              style:
                                  appStore.isDarkModeOn
                                      ? colorWhiteRegular16
                                      : colorPrimaryRegular16,
                            ),
                            Text(
                              data['title'] ?? '',
                              style:
                                  appStore.isDarkModeOn
                                      ? colorWhiteBold16
                                      : colorPrimaryBold16,
                            ),
                            Text(
                              (data['timestamp'] as Timestamp?)
                                      ?.toDate()
                                      .toLocal()
                                      .toString()
                                      .substring(0, 16) ??
                                  '',
                              style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: appColorPrimary,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: IconButton(
                          onPressed: () {
                            PushNotificationsWeb.deleteNotification(
                              usuario.uid,
                              docs[index].id,
                            );
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: iconColorPrimary,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          /*Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Recentes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: mynotifications.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.asset(
                            mynotifications[index].image.toString(),
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          mynotifications[index].name
                                              .toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: context.iconColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          mynotifications[index].message
                                              .toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: context.iconColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                mynotifications[index].time.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            mynotifications[index].recipeimage.toString(),
                            height: 45,
                            width: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 8),
              const Text(
                'Older Notifications',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: mynotifications.length.clamp(0, 5),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.asset(
                            mynotifications[index].image.toString(),
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          mynotifications[index].name
                                              .toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: context.iconColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          mynotifications[index].message
                                              .toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: context.iconColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                mynotifications[index].time.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            mynotifications[index].recipeimage.toString(),
                            height: 45,
                            width: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}
