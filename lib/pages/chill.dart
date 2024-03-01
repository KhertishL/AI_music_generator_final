import 'package:ai_music_generator/component/my_drawer.dart';
import 'package:ai_music_generator/model/playlist_provider_chill.dart';
import 'package:ai_music_generator/model/song.dart';
import 'package:ai_music_generator/pages/song_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class chillPage extends StatefulWidget {
  const chillPage({Key? key}) : super(key: key);

  @override
  State<chillPage> createState() => _HappyPageState();
}

class _HappyPageState extends State<chillPage> {
//get the playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    //get playlist provider
    playlistProvider =
        Provider.of<chillPlaylistProvider>(context, listen: false);
  }

  //go to song
  void goToSong(int songIndex) {
    //update current song index
    playlistProvider.currentSongIndex = songIndex;

    //navigate to song page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SongPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      backgroundColor: Color.fromARGB(255, 221, 204, 49),
      appBar: AppBar(title: Text("CHILL PLAYLIST")),
      drawer: const MyDrawer(),

      // Consumer Widget
      body: Consumer<chillPlaylistProvider>(
        builder: (context, value, child) {
          //get the playlist
          final List<Song> playlist = value.playlist;

          //return list view UI
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context, index) {
              //get individaul song
              final Song song = playlist[index];

              //return list tile UI
              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image.asset(song.albumArtImagePath),
                onTap: () => goToSong(index),
              );
            },
          );
        },
      ),
    );
  }
}
