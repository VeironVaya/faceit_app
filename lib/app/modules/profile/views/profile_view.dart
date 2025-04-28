import 'package:face_it_app/app/widgets/custom_app_bar.dart';
import 'package:face_it_app/app/widgets/custom_botNavBar.dart';
import 'package:face_it_app/app/widgets/custom_editable_text.dart';
import 'package:face_it_app/app/widgets/custom_logout_button.dart';
import 'package:face_it_app/app/widgets/custom_radio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F3FB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAppBar(title: "PROFILE"),
          SizedBox(height: 28),
          SizedBox(
            height: 220,
            width: 220,
            child: Stack(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/profilePictDummy.png',
                    height: 240,
                    width: 240,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 59,
                    height: 59,
                    decoration: BoxDecoration(
                      color: Color(0xFF58BFBE),
                      shape: BoxShape.circle,
                    ),
                    child:
                        const Icon(Icons.edit, color: Colors.white), // optional
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Column(
              children: [
                CustomEditableText(
                  title: "Username",
                  controller: TextEditingController(),
                ),
                SizedBox(height: 10),
                CustomEditableText(
                  title: "Age",
                  controller: TextEditingController(),
                ),
                SizedBox(height: 10),
                CustomEditableText(
                  title: "Skintype",
                  controller: TextEditingController(),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 38),
                  child: Text(
                    "> Redo Skintype Test",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3B6666),
                        decoration: TextDecoration.underline,
                        decorationThickness: 2.0,
                        decorationColor: Color(0xFF3B6666)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 117,
                  width: 185,
                  child: Obx(() => Column(
                        children: [
                          CustomRadioWidget(
                            text: "Pregnant",
                            isSelected: controller.selected.value == "Pregnant",
                            onTap: () => controller.selected("Pregnant"),
                          ),
                          CustomRadioWidget(
                            text: "Nursing",
                            isSelected: controller.selected.value == "Nursing",
                            onTap: () => controller.selected("Nursing"),
                          ),
                          CustomRadioWidget(
                            text: "None",
                            isSelected: controller.selected.value == "None",
                            onTap: () => controller.selected("None"),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          CustomLogoutButton(text: "Logout", onPress: () {}),
        ],
      ),
      bottomNavigationBar: CustomBotnavbar(),
    );
  }
}
