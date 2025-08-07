import 'package:flutter/material.dart';

class Usuario {
  String uid,
      nome,
      email,
      senha,
      telefone,
      pais,
      estado,
      cidade,
      data,
      foto,
      background,
      tokenAlert;
  int ativo;

  Usuario({
    required this.uid,
    required this.nome,
    required this.email,
    required this.senha,
    required this.telefone,
    required this.pais,
    required this.estado,
    required this.cidade,
    required this.data,
    required this.ativo,
    required this.foto,
    required this.background,
    required this.tokenAlert,
  });

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      uid: map['uid'],
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
      telefone: map['telefone'],
      pais: map['pais'],
      estado: map['estado'],
      cidade: map['cidade'],
      data: map['data'],
      foto: map['foto'],
      background: '',
      tokenAlert: map['token_alert'],
      ativo: int.parse(map['ativo'].toString()),
    );
  }
}

Usuario usuarioNull = Usuario(
  uid: '',
  nome: '',
  email: '',
  senha: '',
  telefone: '',
  pais: '',
  estado: '',
  cidade: '',
  data: '',
  foto: '',
  background: '',
  tokenAlert: '',
  ativo: 0,
);

class UsuarioProvider extends ChangeNotifier {
  Usuario usuario = usuarioNull;

  Usuario get getUsuario => usuario;

  updateUsuario(Usuario newUser) {
    usuario = newUser;
    notifyListeners();
  }
}
