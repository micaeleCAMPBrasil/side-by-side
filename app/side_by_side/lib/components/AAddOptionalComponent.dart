// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

class AAddOptionalComponent extends StatelessWidget {
  const AAddOptionalComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top + 64),
          const Text("Optional",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
          const SizedBox(height: 16),
          const Text('Tutorial Video',
              style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 16),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            decoration: BoxDecoration(
              color: appStore.isDarkModeOn
                  ? context.cardColor
                  : appetitAppContainerColor,
              borderRadius: BorderRadius.circular(15),
            ),
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

          //Gallery
          const SizedBox(height: 16),
          const Text('Gallery', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 16),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/image/appetit/soup.jpg',
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                  color: Colors.black.withOpacity(0.2),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              const SizedBox(width: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/image/appetit/category4.jpg',
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                  color: Colors.black.withOpacity(0.2),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              const SizedBox(width: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor),
                    child: Icon(Icons.add, color: context.iconColor),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
