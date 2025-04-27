import 'package:flutter/material.dart';

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
              height: 80,
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
                      Icon(Icons.home_outlined),
                      Icon(Icons.hourglass_full_outlined),
                      Icon(Icons.person_outline)
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
