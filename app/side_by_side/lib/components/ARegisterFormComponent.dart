// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:search_cep/search_cep.dart';

import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/AConstants.dart';

/*permissionLocal() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    await Geolocator.getCurrentPosition();
  }*/

// ignore: must_be_immutable
class FormInformacoesEndereco extends StatefulWidget {
  bool isPais;
  bool mostrar_temos;
  TextEditingController paisController;
  TextEditingController cepController;
  TextEditingController cidadeController;
  TextEditingController estadoController;

  FormInformacoesEndereco({
    super.key,
    required this.isPais,
    required this.mostrar_temos,
    required this.paisController,
    required this.cepController,
    required this.cidadeController,
    required this.estadoController,
  });

  @override
  State<FormInformacoesEndereco> createState() =>
      _FormInformacoesEnderecoState();
}

class _FormInformacoesEnderecoState extends State<FormInformacoesEndereco> {
  // Função para buscar o endereço pelo CEP
  Future<void> _buscarEndereco() async {
    final cep = widget.cepController.text.trim();

    // Checa se o CEP tem 8 dígitos
    if (cep.length == 8) {
      final viaCepSearchCep = ViaCepSearchCep();
      final infoCep = await viaCepSearchCep.searchInfoByCep(cep: cep);

      infoCep.fold((error) => debugPrint('Erro ao buscar CEP: $error'), (
        address,
      ) {
        // Atualiza os campos com os dados retornados
        widget.cidadeController.text = address.localidade ?? '';
        widget.estadoController.text = address.uf ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // endereço
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Você é brasileiro?', style: colorSecondaryBold14),
              SizedBox(width: 10),
              SizedBox(
                width: 30,
                height: 50,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Switch(
                    value: widget.isPais,
                    onChanged: (value) {
                      setState(() {
                        widget.isPais = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          Visibility(
            visible: widget.isPais,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: widget.cepController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelStyle: colorSecondaryBold14,
                    labelText: 'CEP',
                    hintText: 'Digite seu CEP',
                    hintStyle: colorSecondaryBold14,
                    fillColor:
                        appStore.isDarkModeOn
                            ? context.cardColor
                            : appShadowColor,
                    filled: true,
                  ),
                  maxLength: 8,
                  onChanged: (value) {
                    if (value.length == 8) {
                      _buscarEndereco(); // Chama a função quando o CEP está completo
                    }
                  },
                  validator: (value) {
                    if (value!.length < 8) {
                      return 'CEP inválido';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
          ),

          Visibility(
            visible: !widget.isPais,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: widget.paisController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelStyle: colorSecondaryBold14,
                    labelText: 'Pais',
                    hintText: 'Digite seu Pais',
                    hintStyle: colorSecondaryBold14,
                    fillColor:
                        appStore.isDarkModeOn
                            ? context.cardColor
                            : appShadowColor,
                    filled: true,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Digite um Pais';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: widget.estadoController,
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelStyle: colorSecondaryBold14,
                  labelText: 'Estado',
                  hintText: 'Digite seu Estado',
                  hintStyle: colorSecondaryBold14,
                  fillColor:
                      appStore.isDarkModeOn
                          ? context.cardColor
                          : appShadowColor,
                  filled: true,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você não digitou o Estado';
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: widget.cidadeController,
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelStyle: colorSecondaryBold14,
                  labelText: 'Cidade',
                  hintText: 'Digite seu Cidade',
                  hintStyle: colorSecondaryBold14,
                  fillColor:
                      appStore.isDarkModeOn
                          ? context.cardColor
                          : appShadowColor,
                  filled: true,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você não digitou a cidade';
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),

          const SizedBox(height: 16),

          widget.mostrar_temos
              ? Column(
                children: [
                  Text(
                    'Ao se cadastrar você concorda com nossos',
                    style:
                        appStore.isDarkModeOn
                            ? colorWhiteRegulard18
                            : colorPrimaryRegulard18,
                  ),
                  Text(
                    'Termos e Condições',
                    style:
                        appStore.isDarkModeOn
                            ? colorWhiteBold18
                            : colorPrimaryBold18,
                  ),
                ],
              )
              : Container(),
        ],
      ),
    );
  }
}

class FormInformacoesPessoais extends StatelessWidget {
  const FormInformacoesPessoais({
    super.key,
    required this.nameController,
    required this.telefoneController,
  });

  final TextEditingController nameController;
  final TextEditingController telefoneController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nome:',
                style:
                    appStore.isDarkModeOn
                        ? colorWhiteBold14
                        : colorPrimaryBold16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelStyle: colorSecondaryBold14,
                      labelText: 'Nome Completo',
                      hintText: 'Digite o nome completo',
                      hintStyle: colorSecondaryBold14,
                      fillColor:
                          appStore.isDarkModeOn
                              ? context.cardColor
                              : appShadowColor,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Você não digitou seu nome';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Telefone:',
                style:
                    appStore.isDarkModeOn
                        ? colorWhiteBold14
                        : colorPrimaryBold16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: telefoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelStyle: colorSecondaryBold14,
                      labelText: '(DDD) *****-****',
                      hintText: 'Digite um telefone',
                      hintStyle: colorSecondaryBold14,
                      fillColor:
                          appStore.isDarkModeOn
                              ? context.cardColor
                              : appShadowColor,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Você não digitou seu telefone';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class FormInformacoesEmaileSenha extends StatefulWidget {
  FormInformacoesEmaileSenha({
    super.key,
    required this.emailController,
    required this.passController,
    required this.mostrar_temos,
  });

  bool mostrar_temos;
  final TextEditingController emailController;
  final TextEditingController passController;

  @override
  State<FormInformacoesEmaileSenha> createState() =>
      _FormInformacoesEmaileSenhaState();
}

class _FormInformacoesEmaileSenhaState
    extends State<FormInformacoesEmaileSenha> {
  var viewPassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'E-mail:',
                style:
                    appStore.isDarkModeOn
                        ? colorWhiteBold14
                        : colorPrimaryBold16,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: widget.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelStyle: colorSecondaryBold14,
                      border: InputBorder.none,
                      labelText: 'E-mail',
                      hintText: 'Digite o e-mail correto',
                      hintStyle: colorSecondaryBold14,
                      fillColor:
                          appStore.isDarkModeOn
                              ? context.cardColor
                              : appShadowColor,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Digite um e-mail válido';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Senha:',
                style:
                    appStore.isDarkModeOn
                        ? colorWhiteBold14
                        : colorPrimaryBold16,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom + 32.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: TextFormField(
                    obscureText: viewPassword,
                    controller: widget.passController,
                    decoration: InputDecoration(
                      labelStyle: colorSecondaryBold14,
                      border: InputBorder.none,
                      labelText: 'Senha',
                      hintText: 'Coloque sua senha',
                      filled: true,
                      fillColor:
                          appStore.isDarkModeOn
                              ? context.cardColor
                              : appShadowColor,
                      suffixIcon: IconButton(
                        onPressed:
                            () => setState(() => viewPassword = !viewPassword),
                        icon:
                            viewPassword
                                ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                )
                                : const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Digite uma senha válida';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          widget.mostrar_temos
              ? Column(
                children: [
                  Text(
                    'Ao se cadastrar você concorda com nossos',
                    style:
                        appStore.isDarkModeOn
                            ? colorWhiteRegulard18
                            : colorPrimaryRegulard18,
                  ),
                  Text(
                    'Termos e Condições',
                    style:
                        appStore.isDarkModeOn
                            ? colorWhiteBold18
                            : colorPrimaryBold18,
                  ),
                ],
              )
              : Container(),
        ],
      ),
    );
  }
}
