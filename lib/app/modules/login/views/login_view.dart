import 'package:face_it_app/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F3FB),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo_faceit.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 50),
                  CustomButton(
                    text: "Login with Google",
                    icon: "google.png",
                    onPress: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Login with Facebook",
                    icon: "facebook.png",
                    onPress: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Login with Apple",
                    icon: "apple.png",
                    onPress: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Login with Instagram",
                    icon: "ig.png",
                    onPress: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Login with X",
                    icon: "x.png",
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
