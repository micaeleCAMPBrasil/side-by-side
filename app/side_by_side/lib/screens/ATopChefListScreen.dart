// ignore_for_file: file_names

import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

class ATopChefListScreen extends StatelessWidget {
  const ATopChefListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).viewPadding.top),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      color: appStore.isDarkModeOn
                          ? context.cardColor
                          : appetitAppContainerColor,
                      height: 50,
                      width: 50,
                      child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back_ios_outlined,
                              color: appetitBrownColor)),
                    ),
                  ),
                  const Icon(Icons.search, size: 30),
                ],
              ),
              const SizedBox(height: 8),

              //categories
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Top Chef',
                      style: TextStyle(
                          fontSize: 35, fontWeight: FontWeight.w500))),
              const SizedBox(height: 8),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                        shape: const StadiumBorder()),
                    child: Row(
                      children: [
                        const Icon(Icons.adjust_outlined,
                            color: Colors.green, size: 15),
                        const SizedBox(width: 4),
                        Text('780 Active Chef',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: context.iconColor)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                        shape: const StadiumBorder()),
                    child: Row(
                      children: [
                        const Icon(Icons.adjust_outlined,
                            color: Colors.red, size: 15),
                        const SizedBox(width: 4),
                        Text('1200 Total Chef',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: context.iconColor)),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: (1 / 1.8),
                ),
                itemCount: topchefmodal.length,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          topchefmodal[index].image.toString(),
                          height: 310,
                          width: context.width() / 2 - 24,
                          fit: BoxFit.cover,
                          color: Colors.black.withOpacity(0.25),
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 230,
                        ),
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
                                child: Text(
                                    topchefmodal[index].recipe.toString(),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 10))),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
