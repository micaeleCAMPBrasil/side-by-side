// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/components/comentarios/ADiscussionModuloComponent.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

// ignore: must_be_immutable
class AModuloDiscussionComponent extends StatefulWidget {
  Modulos modulo;
  AModuloDiscussionComponent({required this.modulo, super.key});

  @override
  State<AModuloDiscussionComponent> createState() =>
      _AModuloDiscussionComponentState();
}

class _AModuloDiscussionComponentState
    extends State<AModuloDiscussionComponent> {
  final TextEditingController _comentariosTextController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    Usuario usuario =
        Provider.of<UsuarioProvider>(context, listen: false).getUsuario;
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 70),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 2),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Comentários",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.53,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //List of elements
                  ADiscussionModuloComponent(
                    modulo: widget.modulo,
                    limite: false,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
          ClipRRect(
            child: Stack(
              children: [
                TextField(
                  controller: _comentariosTextController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor:
                        appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                    filled: true,
                    labelText: 'Escreva aqui',
                    labelStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: IconButton(
                      onPressed: () async {
                        DateTime now = DateTime.now();
                        String formattedDate = DateFormat(
                          'dd/MM/yyyy',
                        ).format(now);
                        String formattedTime = DateFormat('kk:mm').format(now);

                        // Instância do Firestore
                        final FirebaseFirestore firestore =
                            FirebaseFirestore.instance;

                        // Documento principal (pai)
                        final DocumentReference docRef =
                            firestore.collection('CommentsModulos').doc();

                        Map<String, dynamic> infoUser = {
                          'uid': usuario.uid,
                          'nome': usuario.nome,
                          'foto': usuario.foto,
                        };

                        // Adiciona o documento principal com dados iniciais
                        await docRef.set({
                          'comentario': _comentariosTextController.text,
                          'TimeStamp': Timestamp.now(),
                          'data': formattedDate,
                          'time': formattedTime,
                          'likes': [],
                          'totalComentario': 0,
                          'info_user': infoUser,
                          'modulo': widget.modulo.id,
                        });

                        _comentariosTextController.text = '';
                      },
                      icon: Icon(Icons.send_outlined),
                      color: Colors.orange.shade600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
