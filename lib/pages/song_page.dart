// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ai_music_generator/component/neu_box.dart';
import 'package:flutter/material.dart';
import 'package:ai_music_generator/model/playlist_provider_happy.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder: (context, value, child) => Scaffold(
      backgroundColor: Color.fromARGB(255, 97, 131, 185),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
          child: Column(
          children: [
            //app bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //back button
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  ),
          
                //title
                Text("P L A Y L I S T E"),
          
                //menu button
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  ),
              ],
            ),
          
            //album artwork
            NeuBox(
              child: Image.asset("assets/images/happy_cover_1.jpeg"),
              ),
          
            //song duration progress
          
            //playback controls
              ],
            ),
        ),
        ),
      ),
    );
  }
}