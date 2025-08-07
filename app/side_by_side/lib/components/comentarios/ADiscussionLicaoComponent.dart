// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/utils/AColors.dart';

// ignore: must_be_immutable
class ADiscussionLicaoComponent extends StatefulWidget {
  Modulos modulo;
  Licaos licao;
  bool limite;
  ADiscussionLicaoComponent({
    required this.modulo,
    required this.licao,
    required this.limite,
    super.key,
  });

  @override
  State<ADiscussionLicaoComponent> createState() =>
      _ADiscussionLicaoComponentState();
}

class _ADiscussionLicaoComponentState extends State<ADiscussionLicaoComponent> {
  Future addLike(bool isLiked, String uid, String id) async {
    DocumentReference postRef = FirebaseFirestore.instance
        .collection('CommentsLicoes')
        .doc(id);

    if (isLiked) {
      postRef.update({
        'likes': FieldValue.arrayUnion([uid]),
      });
    } else {
      postRef.update({
        'likes': FieldValue.arrayRemove([uid]),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Usuario usuario =
        Provider.of<UsuarioProvider>(context, listen: false).getUsuario;

    debugPrint(
      "Comentários do módulo ${widget.modulo.id} da Lição ${widget.licao.id}",
    );

    return SingleChildScrollView(
      child: StreamBuilder(
        stream:
            widget.limite
                ? FirebaseFirestore.instance
                    .collection('CommentsLicoes')
                    .where('modulo', isEqualTo: widget.modulo.id)
                    .where('licao', isEqualTo: widget.licao.id)
                    .orderBy('TimeStamp', descending: true)
                    .limit(3)
                    .snapshots()
                : FirebaseFirestore.instance
                    .collection('CommentsLicoes')
                    .where('modulo', isEqualTo: widget.modulo.id)
                    .where('licao', isEqualTo: widget.licao.id)
                    .orderBy('TimeStamp', descending: true)
                    .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final comment = snapshot.data!.docs[index];
                Map<String, dynamic> userInfo = comment['info_user'];

                List<String> listUIDUserLikes = List<String>.from(
                  comment['likes'] ?? [],
                );

                bool isLiked = listUIDUserLikes.contains(usuario.uid);

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //User Information
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            userInfo['foto'].toString() == ''
                                ? 'assets/image/nopicture.png'
                                : userInfo['foto'].toString(),
                            fit: BoxFit.cover,
                            width: 35,
                            height: 35,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          userInfo['nome'].toString(),
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        userInfo['uid'].toString() == usuario.uid
                            ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                /*IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit,
                                      size: 20,
                                      color: iconColorSecondary,
                                    ),
                                  ),*/
                                IconButton(
                                  onPressed: () {
                                    FirebaseFirestore.instance
                                        .collection("CommentsLicoes")
                                        .doc(comment.id)
                                        .delete()
                                        .then(
                                          (value) =>
                                              debugPrint('post deletado'),
                                        )
                                        .catchError(
                                          (error) => debugPrint('erro $error'),
                                        );
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    size: 20,
                                    color: iconColorSecondary,
                                  ),
                                ),
                              ],
                            )
                            : Container(),
                      ],
                    ),

                    //User Comment with likes and reply
                    Padding(
                      padding: const EdgeInsets.only(left: 43.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //comment
                          Text(comment['comentario'].toString()),

                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Expanded(
                                flex: 20,
                                child: Row(
                                  children: [
                                    Icon(
                                      isLiked.validate()
                                          ? Icons.favorite_outlined
                                          : Icons.favorite_border,
                                      color:
                                          isLiked.validate()
                                              ? Colors.red
                                              : context.iconColor,
                                    ).onTap(
                                      () {
                                        isLiked = !isLiked.validate();
                                        addLike(
                                          isLiked,
                                          usuario.uid,
                                          comment.id,
                                        );
                                      },
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                    ),
                                    Text(listUIDUserLikes.length.toString()),
                                  ],
                                ),
                              ),
                              const Expanded(
                                flex: 39,
                                child: Row(
                                  children: [
                                    Icon(Icons.chat_bubble_outline_outlined),
                                    Text('Responder'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ).paddingSymmetric(vertical: 8);
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
