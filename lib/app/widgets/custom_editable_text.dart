import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEditableText extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  CustomEditableText(
      {super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Container(
          width: 180,
          height: 50,
          child: TextField(
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter $title',
              border: UnderlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
