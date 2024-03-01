//file to implement AI music generator
//add Magenta logics here

// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:ai_music_generator/pages/mood.dart';
import 'package:ai_music_generator/themes/chill_mode.dart';

class PlaylistProvider2 extends StatelessWidget {
  // Variable
  final String playlistId;

  // Constructor
  PlaylistProvider2(this.playlistId);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: chillMode, // Applying the theme from chill_mode.dart
      child: Scaffold(
        body: CarouselSlider(
          slideTransform: CubeTransform(),
          unlimitedMode: true,
          children: [
            // Mood Chill
            Container(
              // color: Color.fromARGB(255, 211, 179, 83),
              child: Center(
                child: Text(
                  '$playlistId',
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}