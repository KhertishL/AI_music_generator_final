// ignore_for_file: prefer_const_constructors

import 'package:ai_music_generator/model/playlist_provider.dart';
import 'package:ai_music_generator/model/playlist_provider_chill.dart';
import 'package:ai_music_generator/model/playlist_provider_sad.dart';
import 'package:flutter/material.dart';
import 'package:ai_music_generator/themes/dark_mode.dart';
import 'pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:ai_music_generator/model/playlist_provider_happy.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PlaylistProvider()),
        ChangeNotifierProvider(create: (context) => SadPlaylistProvider()),
        ChangeNotifierProvider(create: (context) => chillPlaylistProvider())
      ],
      child: MyApp(), // Your main application widget
    ),
  );
}

// class ChangeNotifierProvider {
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: darkMode,
    );
  }
}
