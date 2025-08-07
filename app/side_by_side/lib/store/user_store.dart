import 'package:flutter/material.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/exceptions.dart';

class UsuarioStore {
  final IFuncoes repository;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isEditable = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isCadastrado = ValueNotifier<bool>(false);

  final ValueNotifier<Usuario> state = ValueNotifier<Usuario>(usuarioNull);

  final ValueNotifier<List<Usuario>> list = ValueNotifier<List<Usuario>>([]);

  final ValueNotifier<String> erro = ValueNotifier<String>('');

  UsuarioStore({required this.repository});

  Future getUID(String uid) async {
    isLoading.value = true;

    try {
      final result = await repository.getUsuarioUID(uid);
      state.value = result;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }

  Future createUser(
    String uid,
    String nome,
    String email,
    String senha,
    String telefone,
    String pais,
    String estado,
    String cidade,
    String token,
  ) async {
    isLoading.value = true;

    try {
      final result = await repository.criarUsuario(
        uid,
        nome,
        email,
        senha,
        telefone,
        pais,
        estado,
        cidade,
        token,
      );
      state.value = result;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }

  Future loginUser(String uid) async {
    isLoading.value = true;

    try {
      final result = await repository.loginUser(uid);
      isCadastrado.value = result;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }

  Future update(Usuario usuario) async {
    final result = await repository.updateUser(usuario);
    isEditable.value = result;
  }

  Future update_token(Usuario usuario) async {
    final result = await repository.updateToken(
      usuario.uid,
      usuario.tokenAlert,
    );
    isEditable.value = result;
  }
}
