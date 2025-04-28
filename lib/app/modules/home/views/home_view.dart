import 'package:face_it_app/app/routes/app_pages.dart';
import 'package:face_it_app/app/widgets/custom_botNavBar.dart';
import 'package:face_it_app/app/widgets/custom_tiles.dart';
import 'package:face_it_app/app/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F3FB),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HomeAppbar(
                    name: "Chelsea",
                    onPress: () => Get.toNamed(Routes.PROFILE),
                    profilePict: "profilePictDummy.png",
                    skinType: "Combination",
                  ),
                  SizedBox(height: 15),
                  CustomTiles(
                      title: "Try Our Features",
                      features: controller.getFeatures()),
                  SizedBox(height: 15),
                  CustomTiles(
                      title: "Try Our Features",
                      features: controller.getFeatures()),
                ],
              ),
            ),
            Stack(
              children: [
                DraggableScrollableSheet(
                  initialChildSize: 0.2,
                  minChildSize: 0.2,
                  builder: (context, scrollController) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE7F5F7),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          // This is your red indicator
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            height: 6,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 280),
                            child: Text(
                              "Reads",
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),

                          // Expanded list
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: RawScrollbar(
                                controller: scrollController,
                                thumbVisibility: true,
                                thumbColor: Color(0xFF8F8F8F),
                                thickness: 6,
                                radius: Radius.circular(10),
                                child: ListView.builder(
                                  controller: scrollController,
                                  itemCount: 30,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text('News Article ${index + 1}'),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: CustomBotnavbar(), // your custom nav bar widget
      ),
    );
  }
}
