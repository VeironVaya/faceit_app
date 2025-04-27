import 'package:face_it_app/app/data/models/feature_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTiles extends StatelessWidget {
  final String title;
  final List<FeatureModel> features;

  const CustomTiles({super.key, required this.title, required this.features});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 195,
      decoration: BoxDecoration(
        color: Color(0xFFD4EAED),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: const Color.fromARGB(103, 158, 158, 158),
              offset: Offset(0, 10),
              blurRadius: 20,
              spreadRadius: 3)
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: features.length,
                  itemBuilder: (context, index) {
                    final feature = features[index];
                    return Padding(
                      padding: EdgeInsets.only(top: 10, right: 30, left: 45),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            child: Center(
                              child: Image.asset(
                                'assets/icons/${feature.icon}',
                                height: 50, // Increased size
                                width: 50,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Expanded(
                            child: SizedBox(
                              width: 90,
                              child: Text(
                                textAlign: TextAlign.center,
                                feature.name,
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
