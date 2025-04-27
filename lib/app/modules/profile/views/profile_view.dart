import 'package:face_it_app/app/widgets/custom_app_bar.dart';
import 'package:face_it_app/app/widgets/custom_editable_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F3FB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(title: "PROFILE"),
          SizedBox(height: 55),
          SizedBox(
            height: 240,
            width: 240,
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
