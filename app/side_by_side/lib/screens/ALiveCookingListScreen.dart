// ignore_for_file: file_names

import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

class ALiveCookingListScreen extends StatelessWidget {
  const ALiveCookingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).viewPadding.top),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      color: appStore.isDarkModeOn
                          ? context.cardColor
                          : appetitAppContainerColor,
                      height: 50,
                      width: 50,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: appetitBrownColor,
                        ),
                      ),
                    ),
                  ),
                  const Icon(Icons.search, size: 30),
                ],
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Live Cooking',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cookingmodal.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Stack(
                      children: [
                        InkWell(
                          /*onTap: () =>
                              const ALiveCookingRecipeScreen().launch(context),*/
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              cookingmodal[index].image.toString(),
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.25),
                              colorBlendMode: BlendMode.darken,
                            ),
                          ),
                        ),

                        //Internal Data
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          //Internal Padding
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 8),

                                //profile view with name
                                SizedBox(
                                  height: 40,
                                  width: 160,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.white70.withOpacity(0.35),
                                        shape: const StadiumBorder()),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          child: ClipOval(
                                              child: Image.asset(
                                                  cookingmodal[index]
                                                      .chefpic
                                                      .toString(),
                                                  fit: BoxFit.cover,
                                                  height: 60,
                                                  width: 60)),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                            cookingmodal[index]
                                                .chefname
                                                .toString(),
                                            style: const TextStyle(
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),

                                //Main Text
                                Padding(
                                  padding: const EdgeInsets.only(top: 42.0),
                                  child: SizedBox(
                                    height: 70,
                                    child: Text(
                                        cookingmodal[index].data.toString(),
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                ),

                                //Box Icon
                                const Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.crop_free_outlined,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ); /*onTap(() {
                    const ALiveCookingRecipeScreen().launch(context);
                  },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent);*/
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
