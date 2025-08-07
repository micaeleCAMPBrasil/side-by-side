// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:side_by_side/main.dart';
import 'package:side_by_side/screens/ASetupCompleteScreen.dart';
import 'package:side_by_side/utils/AColors.dart';

class AAccountSetupScreen extends StatefulWidget {
  const AAccountSetupScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AAccountSetupScreenState createState() => _AAccountSetupScreenState();
}

class _AAccountSetupScreenState extends State<AAccountSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: appStore.isDarkModeOn
                      ? context.cardColor
                      : appetitAppContainerColor,
                ),
                width: 50,
                height: 50,
                child: const Icon(Icons.arrow_back_ios_outlined,
                    color: appetitBrownColor),
              ),
            ),
            const SizedBox(height: 60),
            const Text('Account \nSetup',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: appStore.isDarkModeOn
                      ? context.cardColor
                      : appetitAppContainerColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.file_upload_outlined, color: context.iconColor),
                    const SizedBox(height: 5),
                    Text('Upload your profile Picture',
                        style: TextStyle(color: context.iconColor)),
                    Text('*maximum 2MB',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: context.iconColor)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: TextField(
                scrollPadding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter Username',
                  labelStyle: const TextStyle(color: Colors.grey),
                  hintText: 'Enter your username',
                  filled: true,
                  fillColor: appStore.isDarkModeOn
                      ? context.cardColor
                      : appetitAppContainerColor,
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ASetupCompleteScreen())),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade600,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Continue', style: TextStyle(fontSize: 18)),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios_outlined, size: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
