// ignore_for_file: file_names

import 'package:nb_utils/nb_utils.dart';

class AWalkThroughModel {
  String? heading;
  String? title;
  String? subtitle;
  String? image;
  double? progress;

  AWalkThroughModel({
    this.heading,
    this.title,
    this.subtitle,
    this.image,
    this.progress,
  });
}

final List<AWalkThroughModel> modal = [
  AWalkThroughModel(
    heading: 'Side by Side',
    title: 'Discipulado Relacional',
    subtitle:
        'O discipulado relacional nasce quando decidimos caminhar juntos em amor e propósito',
    image: 'assets/image/inicial1.jpg',
    progress: 0.33,
  ),
  AWalkThroughModel(
    heading: 'Side by Side',
    title: 'Caminhando Juntos',
    subtitle:
        'Caminhamos juntos, construindo laços que fortalecem nossa fé e nos levam mais longe',
    image: 'assets/image/inicial2.jpg',
    progress: 0.66,
  ),
  AWalkThroughModel(
    heading: 'Side by Side',
    title: 'Família',
    subtitle:
        'E é na família que esse caminhar ganha sentido, se tornando um legado de fé e amor.',
    image: 'assets/image/inicial3.jpg',
    progress: 1,
  ),
];

class SearchPage {
  String? text;
  String? image;

  SearchPage({this.text, this.image});
}

final List<SearchPage> categoriasPesquias = [
  SearchPage(text: 'Todos', image: "1"),
  SearchPage(text: 'Favoritos', image: "2"),
  SearchPage(text: 'Salvos', image: "3"),
];

List<LanguageDataModel> languageList() {
  return [
    LanguageDataModel(
      id: 1,
      name: 'English',
      languageCode: 'en',
      fullLanguageCode: 'en-US',
      flag: 'images/flag/ic_us.png',
    ),
    LanguageDataModel(
      id: 2,
      name: 'Hindi',
      languageCode: 'hi',
      fullLanguageCode: 'hi-IN',
      flag: 'images/flag/ic_hi.png',
    ),
    LanguageDataModel(
      id: 3,
      name: 'Arabic',
      languageCode: 'ar',
      fullLanguageCode: 'ar-AR',
      flag: 'images/flag/ic_ar.png',
    ),
    LanguageDataModel(
      id: 4,
      name: 'French',
      languageCode: 'fr',
      fullLanguageCode: 'fr-FR',
      flag: 'images/flag/ic_fr.png',
    ),
  ];
}
