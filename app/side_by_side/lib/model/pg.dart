import 'package:flutter/material.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/http_client.dart';

class Pg {
  int id, idModulo, nLicao, nDevocional;
  String uid, data;

  Pg({
    required this.id,
    required this.uid,
    required this.idModulo,
    required this.nLicao,
    required this.nDevocional,
    required this.data,
  });

  factory Pg.fromMap(Map<String, dynamic> map) {
    return Pg(
      id: int.parse(map['id'].toString()),
      uid: map['id_lider'],
      idModulo: int.parse(map['id_modulo'].toString()),
      nLicao: int.parse(map['n_licao'].toString()),
      nDevocional: int.parse(map['devocional'].toString()),
      data: map['data'],
    );
  }
}

Pg pgNull = Pg(
  id: 0,
  uid: '',
  idModulo: 0,
  nLicao: 0,
  nDevocional: 0,
  data: '',
);

final PgStore storePg = PgStore(
  repository: IFuncoesPHP(
    client: HttpClient(),
  ),
);

class PgProvider extends ChangeNotifier {
  Pg pg = pgNull;

  List<Licaos> licoes = [];

  Pg get getPg => pg;
  List<Licaos> get listLicoes => licoes;

  updatePg(Pg newPG) {
    pg = newPG;
    notifyListeners();
  }

  updateLicoes(Pg pg) async {
    await storePg.getListLicoes(pg);
    licoes = storePg.licoes.value;
    notifyListeners();
  }
}

class ProgressoLicao {
  int id, idPg, idModulo, nLicao, check, like, save;
  String idLider, data;

  ProgressoLicao({
    required this.id,
    required this.idLider,
    required this.idPg,
    required this.idModulo,
    required this.nLicao,
    required this.check,
    required this.like,
    required this.save,
    required this.data,
  });

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_lider'] = idLider;
    data['id_pg'] = idPg;
    data['id_modulo'] = idModulo;
    data['n_licao'] = nLicao;
    data['checks'] = check;
    data['likes'] = like;
    data['saves'] = save;
    data['data'] = data;
    return data;
  }

  factory ProgressoLicao.fromMap(Map<String, dynamic> map) {
    return ProgressoLicao(
      id: int.parse(map['id'].toString()),
      idLider: map['id_lider'].toString(),
      idPg: int.parse(map['id_pg'].toString()),
      idModulo: int.parse(map['id_modulo'].toString()),
      nLicao: int.parse(map['n_licao'].toString()),
      check: int.parse(map['checks'].toString()),
      like: int.parse(map['likes'].toString()),
      save: int.parse(map['saves'].toString()),
      data: map['data'],
    );
  }
}

ProgressoLicao progressoLicaoNull = ProgressoLicao(
  id: 0,
  idLider: '',
  idPg: 0,
  idModulo: 0,
  nLicao: 0,
  check: 0,
  like: 0,
  save: 0,
  data: '',
);

class ProgressoDevocional {
  int id, idPg, idModulo, nLicao, dia, checkDevocional;
  String idLider, data;

  ProgressoDevocional({
    required this.id,
    required this.idLider,
    required this.idPg,
    required this.idModulo,
    required this.nLicao,
    required this.dia,
    required this.checkDevocional,
    required this.data,
  });

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_lider'] = idLider;
    data['id_pg'] = idPg;
    data['id_modulo'] = idModulo;
    data['n_licao'] = nLicao;
    data['dia'] = dia;
    data['check_devocional'] = checkDevocional;
    data['data'] = data;
    return data;
  }

  factory ProgressoDevocional.fromMap(Map<String, dynamic> map) {
    return ProgressoDevocional(
      id: int.parse(map['id'].toString()),
      idLider: map['id_lider'].toString(),
      idPg: int.parse(map['id_pg'].toString()),
      idModulo: int.parse(map['id_modulo'].toString()),
      nLicao: int.parse(map['n_licao'].toString()),
      dia: int.parse(map['dia'].toString()),
      checkDevocional: int.parse(map['check_devocional'].toString()),
      data: map['data'].toString(),
    );
  }
}

ProgressoDevocional progressoDevocionalNull = ProgressoDevocional(
  id: 0,
  idLider: '',
  idPg: 0,
  idModulo: 0,
  nLicao: 0,
  dia: 0,
  checkDevocional: 0,
  data: '',
);

class Criancas {
  int id, idPg;
  String uid, nome, idade, data;
  Criancas({
    required this.id,
    required this.uid,
    required this.idPg,
    required this.nome,
    required this.idade,
    required this.data,
  });

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> datas = <String, dynamic>{};
    datas['id'] = id;
    datas['id_lider'] = uid;
    datas['id_pg'] = idPg;
    datas['nome'] = nome;
    datas['data_nascimento'] = idade;
    datas['data'] = data;
    return datas;
  }

  factory Criancas.fromMap(Map<String, dynamic> map) {
    return Criancas(
      id: int.parse(map['id'].toString()),
      uid: map['id_lider'].toString(),
      idPg: int.parse(map['id_pg'].toString()),
      nome: map['nome'].toString(),
      idade: map['data_nascimento'].toString(),
      data: map['data'].toString(),
    );
  }
}
