// ignore_for_file: prefer_const_constructors

import 'package:ai_music_generator/pages/chill.dart';
import 'package:ai_music_generator/pages/happy.dart';
import 'package:ai_music_generator/pages/sad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_music_generator/component/my_drawer.dart';
import 'package:ai_music_generator/model/playlist_provider.dart';
import 'package:provider/provider.dart';
import 'package:ai_music_generator/model/playlist_provider_happy.dart';

class FirstPage extends StatelessWidget {
  String moodType = '';

  FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: CarouselSlider(
        slideTransform: CubeTransform(),
        unlimitedMode: true,
        children: [
          //mood choice
          Container(
            color: Theme.of(context).colorScheme.background,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HOW ARE YOU FEELING",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 35,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(
                    height:
                        10), // Add some spacing between the two Text widgets
                Text(
                  "swipe to choose",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),

          //mood happy
          // Assuming you want to add a consumer widget below the Image
          Container(
            color: Color.fromARGB(255, 97, 131, 185),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16.0), // Adjust spacing if needed

                // Text for the mood
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HappyPage()),
                    );
                  },
                  child: Text(
                    "H A P P Y",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Your image (replace 'assets/sad_image.jpg' with your image asset path)
                Image.asset(
                  'lib/images/happy_nbw.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),

          Container(
            color: Color.fromRGBO(39, 81, 61, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16.0), // Adjust spacing if needed
                // Text for the mood
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SadPage()),
                    );
                  },
                  child: Text(
                    "S A D",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Your image (replace 'assets/sad_image.jpg' with your image asset path)
                Image.asset(
                  'lib/images/sad.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),

          //mood chill
          Container(
            color: Color.fromARGB(255, 189, 168, 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16.0), // Adjust spacing if needed
                // Text for the mood
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => chillPage()),
                    );
                  },
                  child: Text(
                    "C H I L L",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Your image (replace 'assets/sad_image.jpg' with your image asset path)
                Image.asset(
                  'lib/images/happy_nb.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
