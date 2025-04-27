import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String? icon;
  final VoidCallback onPress;

  const CustomButton(
      {super.key, required this.text, this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          splashColor: Color(0xFFF8F8F8),
          onTap: onPress,
          child: Ink(
            width: 288,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF94DCDC),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/${icon}',
                      height: 24, // Increased size
                      width: 24,
                    ),
                    const SizedBox(width: 13),
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
