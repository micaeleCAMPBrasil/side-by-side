// ignore_for_file: file_names
import 'package:side_by_side/components/criancas/ACriancasAddComponent.dart';
import 'package:side_by_side/components/criancas/ACriancasListComponent.dart';
import 'package:side_by_side/screens/ADashboardScreen.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:flutter/material.dart';

class AChildrensScreens extends StatefulWidget {
  const AChildrensScreens({super.key});

  @override
  State<AChildrensScreens> createState() => _AChildrensScreensState();
}

class _AChildrensScreensState extends State<AChildrensScreens> {
  List<Widget> reelsPages = <Widget>[
    ACriancasListComponent(),
    ACriancasAddComponent(),
  ];

  int selectedindex = 0;
  int pageindex = 1;

  PageController mypagecontroller = PageController(initialPage: 0);

  void ontapselection(int index) {
    debugPrint(index.toString());
    mypagecontroller.jumpToPage(selectedindex + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //top 3 elements

          //main content
          PageView(
            controller: mypagecontroller,
            onPageChanged: (value) {
              setState(() {
                selectedindex = value;
                pageindex = value + 1;
              });
            },
            children: reelsPages.map((e) => Container(child: e)).toList(),
          ),

          Padding(
            padding: EdgeInsets.only(
              bottom: 16,
              right: 16,
              left: 16,
              top: 16.0 + MediaQuery.of(context).viewPadding.top,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: appColorPrimary,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: appColorPrimaryLight,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ADashboardScreen(),
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  "Crianças",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 50,
                    height: 30,
                    color: appColorPrimary,
                    child: Center(
                      child: InkWell(
                        child: Text(
                          "$pageindex/2",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //last two button
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              if (selectedindex == 0) {
                                Navigator.pop(context);
                              } else {
                                mypagecontroller.jumpToPage(selectedindex - 1);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appColorPrimary,
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_outlined,
                              color: appColorPrimaryLight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Spacer(),
                    const SizedBox(width: 64),
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              if (selectedindex == 1) {
                                Navigator.pop(context);
                              } else {
                                mypagecontroller.jumpToPage(selectedindex + 1);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appColorPrimary,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: appColorPrimaryLight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    /*Expanded(
                      flex: 7,
                      child: ElevatedButton(
                        onPressed: () {
                          if (selectedindex == 4) {
                            Navigator.pop(context);
                          } else {
                            setState(
                              () => mypagecontroller.jumpToPage(
                                selectedindex + 1,
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appColorPrimary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 48,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              (selectedindex <= 3) ? 'Next' : 'Submit',
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
