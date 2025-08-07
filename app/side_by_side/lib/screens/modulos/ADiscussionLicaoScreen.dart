// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:side_by_side/components/comentarios/ADiscussionLicaoComponent.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

// ignore: must_be_immutable
class ADiscussionLicaoScreen extends StatefulWidget {
  Modulos modulo;
  Licaos licao;
  ADiscussionLicaoScreen(
      {required this.modulo, required this.licao, super.key});

  @override
  State<ADiscussionLicaoScreen> createState() => _ADiscussionLicaoScreenState();
}

class _ADiscussionLicaoScreenState extends State<ADiscussionLicaoScreen> {
  final TextEditingController _comentariosTextController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    Usuario usuario =
        Provider.of<UsuarioProvider>(context, listen: false).getUsuario;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 2),
            Align(
              alignment: Alignment.topLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: appStore.isDarkModeOn
                        ? context.cardColor
                        : appetitAppContainerColor,
                    child: const Icon(Icons.arrow_back_ios_outlined,
                        color: appetitBrownColor),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Comentários",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.72,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //List of elements
                    ADiscussionLicaoComponent(
                      modulo: widget.modulo,
                      licao: widget.licao,
                      limite: false,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        child: Stack(
          children: [
            TextField(
              controller: _comentariosTextController,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: appStore.isDarkModeOn
                    ? context.cardColor
                    : appetitAppContainerColor,
                filled: true,
                labelText: 'Escreva aqui',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                padding: EdgeInsets.all(5),
                child: IconButton(
                  onPressed: () async {
                    DateTime now = DateTime.now();
                    String formattedDate = DateFormat('dd/MM/yyyy').format(now);
                    String formattedTime = DateFormat('kk:mm').format(now);

                    // Instância do Firestore
                    final FirebaseFirestore firestore =
                        FirebaseFirestore.instance;

                    // Documento principal (pai)
                    final DocumentReference docRef =
                        firestore.collection('CommentsLicoes').doc();

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
                      'licao': widget.licao.nLicao,
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
    );
  }
}
