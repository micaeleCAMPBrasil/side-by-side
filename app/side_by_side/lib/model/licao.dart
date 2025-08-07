class Licaos {
  int id, idClico, idModulo, nLicao, qtdDevocional;
  String title, subtitle, capa, icon;

  Licaos({
    required this.id,
    required this.idClico,
    required this.idModulo,
    required this.nLicao,
    required this.qtdDevocional,
    required this.title,
    required this.subtitle,
    required this.capa,
    required this.icon,
  });

  factory Licaos.fromMap(Map<String, dynamic> map) {
    return Licaos(
      id: int.parse(map['id_licao'].toString()),
      idClico: int.parse(map['id_ciclo'].toString()),
      idModulo: int.parse(map['id_modulo'].toString()),
      nLicao: int.parse(map['numero_licao'].toString()),
      qtdDevocional: int.parse(map['qtd_devocional'].toString()),
      title: "Lição ${map['numero_licao']}",
      subtitle: map['nome_licao'],
      capa: map['capa_licao'],
      icon: map['icon_licao'],
    );
  }
}
