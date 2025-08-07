// ignore_for_file: file_names

import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

class AReviewScreen extends StatelessWidget {
  const AReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16 + MediaQuery.of(context).viewPadding.top),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          height: 50,
                          width: 50,
                          color: appStore.isDarkModeOn
                              ? context.cardColor
                              : appetitAppContainerColor,
                          child: const Icon(Icons.arrow_back_ios_outlined,
                              color: appetitBrownColor),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        height: 50,
                        width: 50,
                        color: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                        child: const Icon(Icons.add, color: appetitBrownColor),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Reviews",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w700)),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 40,
                        width: 80,
                        color: Colors.orange.shade600,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star_outlined, color: Colors.white),
                            SizedBox(width: 4),
                            Text('4.5', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  //List of elements
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset('assets/image/appetit/soup.jpg',
                                fit: BoxFit.cover,
                                color: Colors.black.withOpacity(0.2),
                                colorBlendMode: BlendMode.darken),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                                'assets/image/appetit/category4.jpg',
                                fit: BoxFit.cover,
                                color: Colors.black.withOpacity(0.2),
                                colorBlendMode: BlendMode.darken),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset('assets/image/appetit/p1.jpg',
                                fit: BoxFit.cover,
                                color: Colors.black.withOpacity(0.2),
                                colorBlendMode: BlendMode.darken),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset('assets/image/appetit/p2.jpg',
                                fit: BoxFit.cover,
                                color: Colors.black.withOpacity(0.2),
                                colorBlendMode: BlendMode.darken),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 60,
                                width: 60,
                                child: Image.asset(
                                    'assets/image/appetit/p3.jpg',
                                    fit: BoxFit.cover,
                                    color: Colors.black.withOpacity(0.2),
                                    colorBlendMode: BlendMode.darken),
                              ),
                              const SizedBox(
                                height: 60,
                                width: 60,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("+23",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                  Column(
                    children: discussionmodal.map((e) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //User Information
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(e.image.toString(),
                                        fit: BoxFit.cover,
                                        width: 35,
                                        height: 35),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(e.name.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),

                              //User Comment with likes and reply
                              Padding(
                                padding: const EdgeInsets.only(left: 43.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //comment
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.orange.shade600),
                                        Icon(Icons.star,
                                            color: Colors.orange.shade600),
                                        Icon(Icons.star,
                                            color: Colors.orange.shade600),
                                        Icon(Icons.star,
                                            color: Colors.orange.shade600),
                                        Icon(Icons.star_border,
                                            color: Colors.orange.shade600),
                                      ],
                                    ),
                                    const SizedBox(height: 8),

                                    Text(e.comment.toString()),

                                    const SizedBox(height: 4),

                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: Image.asset(
                                            e.reviewpic.toString(),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            fit: BoxFit.cover)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                        filled: true,
                        labelText: 'Discuss here',
                        labelStyle: const TextStyle(color: Colors.grey),
                        suffixIcon: Icon(Icons.send_outlined,
                            color: Colors.orange.shade600),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
