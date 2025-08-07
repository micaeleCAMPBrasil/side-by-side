// ignore_for_file: file_names

import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';

class ASearchTopChefComponent extends StatelessWidget {
  const ASearchTopChefComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: (1 / 1.5)),
      itemCount: topchefmodal.length,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                topchefmodal[index].image.toString(),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.6,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.25),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(topchefmodal[index].name.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800)),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(topchefmodal[index].recipe.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10))),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
