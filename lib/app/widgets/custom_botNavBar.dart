import 'package:face_it_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBotnavbar extends StatelessWidget {
  const CustomBotnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Color(0xFFF8F8F8),
          onTap: () {},
          child: Ink(
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration(
                color: Color(0xFF58BFBE),
              ),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () => Get.toNamed(Routes.HOME),
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child:
                                Icon(Icons.home_outlined, color: Colors.white)),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {}, // later add your function
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.hourglass_full_outlined,
                              color: Colors.white),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () => Get.toNamed(Routes.PROFILE),
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Icon(Icons.person_outline,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
