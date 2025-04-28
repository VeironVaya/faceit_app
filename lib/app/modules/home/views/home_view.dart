import 'package:face_it_app/app/routes/app_pages.dart';
import 'package:face_it_app/app/widgets/custom_botNavBar.dart';
import 'package:face_it_app/app/widgets/custom_tiles.dart';
import 'package:face_it_app/app/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F3FB),
      body: SafeArea(
        child: SingleChildScrollView(
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
