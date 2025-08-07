// ignore_for_file: file_names

import 'package:side_by_side/screens/ADashboardScreen.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

class ASetupCompleteScreen extends StatelessWidget {
  const ASetupCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/image/appetit/set.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4),
                  BlendMode.darken,
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).viewPadding.top + 16,
            left: 16,
            right: 16,
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Appetit',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),

          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              appStore.isDarkModeOn
                                  ? context.cardColor
                                  : appetitAppContainerColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_outlined,
                              color: appetitBrownColor,
                            ),
                            Text(
                              '  Back',
                              style: TextStyle(
                                color: appetitBrownColor,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ADashboardScreen(),
                            ),
                          ),
                      backgroundColor: appetitBrownColor,
                      child: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const Positioned(
            left: 16,
            right: 16,
            bottom: 80,
            child: Column(
              children: [
                Text(
                  'Setup Completed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Your profile is now ready to go.Click the continue button below to start exploring Appetit!',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {},),
    );
  }
}
