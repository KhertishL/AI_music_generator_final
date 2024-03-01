// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ai_music_generator/pages/mood.dart';
import 'package:ai_music_generator/component/my_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text(""), backgroundColor: Colors.grey.shade900, iconTheme: IconThemeData(color: Color.fromARGB(255, 214, 214, 214))),
      drawer: const MyDrawer(),

      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstPage()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Generate Music AI",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              Image.asset(
                'lib/images/home_page.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
