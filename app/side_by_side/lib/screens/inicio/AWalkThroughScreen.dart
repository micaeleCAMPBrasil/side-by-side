// ignore_for_file: file_names
import 'package:side_by_side/screens/login/AWelcomeScreen.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class AWalkThroughScreen extends StatefulWidget {
  const AWalkThroughScreen({super.key});

  @override
  State<AWalkThroughScreen> createState() => _AWalkThroughScreenState();
}

class _AWalkThroughScreenState extends State<AWalkThroughScreen> {
  int initialValue = 0;
  int progressIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    setStatusBarColor(Colors.transparent);
    super.initState();
    pageController = PageController(initialPage: 0);
    progressIndex = 0;
  }

  double containerWidth() {
    return (150 / modal.length) * (progressIndex + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              initialValue = value;
              progressIndex = value;
              debugPrint("$value");
            }),
            children: modal.map((e) {
              return Stack(
                children: [
                  //Image
                  Image.asset(
                    e.image.toString(),
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.35),
                    colorBlendMode: BlendMode.darken,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  // DataEntry
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).viewPadding.top + 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                              Text(
                                (e.heading ?? ""),
                                style: colorWhiteMedium25,
                              ),
                              // Button Pular
                              initialValue < 2
                                  ? Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: appColorPrimary,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const AWelcomeScreen(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Pular',
                                          style: colorWhiteBold14,
                                        ),
                                      ),
                                    )
                                  : Container(),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.title.toString(),
                              style: colorWhiteSemiBold40,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              e.subtitle.toString(),
                              style: colorWhiteRegular14,
                            ),
                            const SizedBox(height: 80),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }).toList(),
          ),
          //Determinate LinearProgressIndicator & FAB
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 10,
                      decoration: BoxDecoration(
                        color: appColorPrimaryLight,
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                    AnimatedContainer(
                      duration: 1.seconds,
                      width: containerWidth(),
                      height: 10,
                      decoration: BoxDecoration(
                        color: appColorPrimary,
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                  ],
                ),
                // Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: appColorPrimary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 50,
                  width: 50,
                  child: InkWell(
                    onTap: () {
                      if (initialValue < 2) {
                        setState(
                          () => pageController.jumpToPage(initialValue + 1),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AWelcomeScreen(),
                          ),
                        );
                      }
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: appColorPrimaryLight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
