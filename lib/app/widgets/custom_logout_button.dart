import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLogoutButton extends StatelessWidget {
  final String text;
  final String? icon;
  final VoidCallback onPress;
  const CustomLogoutButton(
      {super.key, required this.text, this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        splashColor: Color(0xFFF8F8F8),
        onTap: onPress,
        child: Ink(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFB80A0A),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
