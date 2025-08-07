// ignore_for_file: file_names

import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class AAddDirectionsComponent extends StatelessWidget {
  const AAddDirectionsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top + 64),

          //Information text
          const Text("Directions",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),

          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                        filled: true,
                        labelText: 'Directions 1',
                        labelStyle: const TextStyle(color: Colors.grey),
                        // alignLabelWithHint: false,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                height: 60,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('1g', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 16),
                        Icon(Icons.arrow_drop_down_outlined,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                        filled: true,
                        labelText: 'Directions 2',
                        labelStyle: const TextStyle(color: Colors.grey),
                        // alignLabelWithHint: false,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                height: 60,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('1g', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 16),
                        Icon(Icons.arrow_drop_down_outlined,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor,
                        filled: true,
                        labelText: 'Directions 3',
                        labelStyle: const TextStyle(color: Colors.grey),
                        // alignLabelWithHint: false,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                height: 60,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: appStore.isDarkModeOn
                            ? context.cardColor
                            : appetitAppContainerColor),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('1g', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 16),
                        Icon(Icons.arrow_drop_down_outlined,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: appStore.isDarkModeOn
                  ? context.cardColor
                  : appetitAppContainerColor,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, color: Colors.grey),
                    SizedBox(width: 4),
                    Text('Add Directions',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
