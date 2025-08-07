// ignore_for_file: file_names

import 'dart:async';

import 'package:provider/provider.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/criancas/AChildrensScreens.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/utils/AConstants.dart';

// ignore: must_be_immutable
class AEditChildrenScreen extends StatefulWidget {
  Criancas crianca;
  AEditChildrenScreen({super.key, required this.crianca});

  @override
  State<AEditChildrenScreen> createState() => _AEditChildrenScreenState();
}

class _AEditChildrenScreenState extends State<AEditChildrenScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  @override
  void initState() {
    super.initState();
    setState(() {
      _nameController.text = widget.crianca.nome;
      _ageController.text = widget.crianca.idade;
    });
  }

  @override
  Widget build(BuildContext context) {
    Usuario usuario =
        Provider.of<UsuarioProvider>(context, listen: false).getUsuario;
    Pg pg = Provider.of<PgProvider>(context, listen: false).getPg;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 16,
              right: 16,
              left: 16,
              top: 16.0 + MediaQuery.of(context).viewPadding.top,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: appColorPrimary,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: appColorPrimaryLight,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AChildrensScreens(),
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  "Criança",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).viewPadding.top),
                const SizedBox(height: 64),
                const Text(
                  "Nome",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor:
                          appStore.isDarkModeOn
                              ? context.cardColor
                              : appShadowColor,
                      filled: true,
                      labelStyle: colorSecondaryBold14,
                      hintStyle: colorSecondaryBold14,
                      labelText: 'Nome',
                      hintText: 'Informe o nome',
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Idade",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: TextField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor:
                          appStore.isDarkModeOn
                              ? context.cardColor
                              : appShadowColor,
                      filled: true,
                      labelStyle: colorSecondaryBold14,
                      hintStyle: colorSecondaryBold14,
                      labelText: 'Idade',
                      hintText: 'Informe a Idade',
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),

          //last two button
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /*Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appStore.isDarkModeOn
                                  ? context.cardColor
                                  : appStore.isDarkModeOn
                                      ? context.cardColor
                                      : appetitAppContainerColor,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: appetitBrownColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Spacer(),*/
                    //const SizedBox(width: 64),
                    Expanded(
                      flex: 7,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_nameController.text == '' ||
                              _ageController.text == '') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Informações vazias'),
                                backgroundColor: appColorPrimary,
                              ),
                            );
                          } else {
                            await storePg
                                .editarCriancas(
                                  usuario.uid,
                                  pg.id,
                                  widget.crianca.id,
                                  _nameController.text,
                                  _ageController.text,
                                )
                                .then((value) {
                                  if (value) {
                                    //sucesso
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Sucesso'),
                                        backgroundColor: appColorPrimary,
                                      ),
                                    );

                                    Timer(Duration(seconds: 1), () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => AChildrensScreens(),
                                        ),
                                      );
                                    });
                                  } else {
                                    // algum erro
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Erro'),
                                        backgroundColor: appColorPrimary,
                                      ),
                                    );
                                  }
                                });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appColorPrimary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 48,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Savar', style: colorWhiteBold20),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
