import 'package:ai_music_generator/model/song.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_carousel_slider/carousel_slider.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ai_music_generator/pages/mood.dart';

class chillPlaylistProvider extends ChangeNotifier {
//variable
  final List<Song> _chillplaylist = [
    //song 1
    Song(
        songName: "chill_Song_1",
        artistName: "Generated",
        albumArtImagePath: "assets/cover_images/chill_cover_1.jpeg",
        audioPath: "aassets/happy_songs/happy_1.mp3"),

    Song(
        songName: "chill_Song_2",
        artistName: "Generated",
        albumArtImagePath: "assets/cover_images/chill_cover_2.jpeg",
        audioPath: "aassets/happy_songs/happy_2.mp3"),

    Song(
        songName: "chill_Song_3",
        artistName: "Generated",
        albumArtImagePath: "assets/cover_images/chill_cover_3.jpeg",
        audioPath: "aassets/happy_songs/chill_3.mp3"),
  ];

  //current song playing index
  int? _currentSongIndex;

  /*

  GETTERS

  */
  List<Song> get playlist => _chillplaylist;
  int? get currentSongIndex => _currentSongIndex;

  /* 

  SETTERS

  */

  set currentSongIndex(int? newIndex) {
    //update current song index
    _currentSongIndex = newIndex;

    //update UI
    notifyListeners();
  }
}
