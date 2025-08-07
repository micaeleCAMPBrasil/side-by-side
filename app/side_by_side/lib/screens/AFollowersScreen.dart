// ignore_for_file: file_names

import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

class AFollowersScreen extends StatelessWidget {
  const AFollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).viewPadding.top),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        color: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                        height: 50,
                        width: 50,
                        child: const Icon(Icons.arrow_back_ios_outlined,
                            color: appetitBrownColor),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                        color: Colors.orange,
                        height: 50,
                        width: 50,
                        child: const Icon(Icons.tune_outlined,
                            color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Text('Follower',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 30,
                  width: 120,
                  color: appStore.isDarkModeOn
                      ? context.cardColor
                      : appetitAppContainerColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.adjust_outlined,
                          color: Colors.red, size: 15),
                      const SizedBox(width: 4),
                      Text(
                        '432 followers',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: context.iconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Column(
                children: mynotifications
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(e.image.toString(),
                                    height: 50, width: 50, fit: BoxFit.cover),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e.name.toString(),
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text('Florida,US',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10)),
                                ],
                              )),
                              Align(
                                alignment: Alignment.centerRight,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: InkWell(
                                    child: Container(
                                        color: appStore.isDarkModeOn
                                            ? context.cardColor
                                            : appetitAppContainerColor,
                                        height: 50,
                                        width: 50,
                                        child: const Icon(Icons.person_add_alt,
                                            color: Colors.grey)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
