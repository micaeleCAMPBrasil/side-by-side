// ignore_for_file: file_names

import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';

class ASearchLiveComponent extends StatelessWidget {
  const ASearchLiveComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: (1 / 1.5)),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      scrollDirection: Axis.vertical,
      itemCount: cookingmodal.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                cookingmodal[index].image.toString(),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.6,
                color: Colors.black.withOpacity(0.35),
                colorBlendMode: BlendMode.darken,
              ),
            ),

            Positioned(
                top: 100,
                left: 16,
                right: 16,
                child: Text(cookingmodal[index].data.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 18))),

            //zoom icon
            const Positioned(
                bottom: 16,
                right: 16,
                child: Icon(Icons.crop_free_outlined, color: Colors.white)),

            //User profile information
            Positioned(
              top: 16,
              left: 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70.withOpacity(0.35),
                    shape: const StadiumBorder()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 10,
                        child: ClipOval(
                            child: Image.asset(
                                cookingmodal[index].chefpic.toString(),
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60))),
                    Text(cookingmodal[index].chefname.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
