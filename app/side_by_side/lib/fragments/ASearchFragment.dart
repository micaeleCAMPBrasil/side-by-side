// ignore_for_file: file_names

import 'package:side_by_side/components/modulos/AModuloComponent.dart';
import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/main.dart';

class AModuloPesquisaFragment extends StatefulWidget {
  const AModuloPesquisaFragment({super.key});

  @override
  State<AModuloPesquisaFragment> createState() =>
      _AModuloPesquisaFragmentState();
}

class _AModuloPesquisaFragmentState extends State<AModuloPesquisaFragment>
    with SingleTickerProviderStateMixin {
  late PageController pageController = PageController(initialPage: 0);

  var selectedItem = 0;

  void onTapAction(index) {
    setState(() => selectedItem = index);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categoriasPesquias.length,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          leadingWidth: 0,
          title: TextField(
            style: const TextStyle(color: Colors.black),
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: Colors.grey),
              labelText: 'Pesquise',
              hintStyle: const TextStyle(color: Colors.grey),
              hintText: 'Digite...',
              prefixIcon: const Icon(
                Icons.search_outlined,
                size: 24,
                color: Colors.grey,
              ),
              border: InputBorder.none,
              filled: true,
              contentPadding: EdgeInsets.zero,
              fillColor:
                  appStore.isDarkModeOn
                      ? context.cardColor
                      : appetitAppContainerColor,
            ),
          ).cornerRadiusWithClipRRect(16),
          elevation: 0,
          backgroundColor: context.scaffoldBackgroundColor,
          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 2, color: Colors.blue),
            ),
            isScrollable: true,
            physics: const AlwaysScrollableScrollPhysics(),
            tabs:
                categoriasPesquias
                    .map(
                      (e) => Row(
                        children: [
                          Text(
                            e.text.toString(),
                            style: TextStyle(
                              color: context.iconColor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ).paddingSymmetric(vertical: 6),
                    )
                    .toList(),
          ),
        ),
        body: TabBarView(
          children:
              categoriasPesquias.map((e) {
                return AModuloComponent(
                  physics: const AlwaysScrollableScrollPhysics(),
                  index: int.parse(e.image.toString()),
                ).paddingTop(16);
              }).toList(),
        ),
      ),
    );
  }
}
