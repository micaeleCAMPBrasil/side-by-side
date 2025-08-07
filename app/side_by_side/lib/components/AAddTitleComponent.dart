// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

class AAddTitleComponent extends StatelessWidget {
  const AAddTitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top),
          const SizedBox(height: 64),
          const Text("Title",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: appStore.isDarkModeOn
                    ? context.cardColor
                    : appetitAppContainerColor,
                filled: true,
                labelStyle: const TextStyle(color: Colors.grey),
                hintStyle: const TextStyle(color: Colors.grey),
                labelText: 'Title',
                hintText: 'Enter title name',
              ),
            ),
          ),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              color: appStore.isDarkModeOn
                  ? context.cardColor
                  : appetitAppContainerColor,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.file_upload_outlined, color: Colors.grey),
                  SizedBox(height: 8),
                  Text('Upload your profile picture',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.grey)),
                  Text('*maximum size 2MB',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey)),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
