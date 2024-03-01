import 'package:ai_music_generator/component/my_drawer.dart';
import 'package:ai_music_generator/model/playlist_provider_happy.dart';
import 'package:ai_music_generator/model/song.dart';
import 'package:ai_music_generator/pages/song_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HappyPage extends StatefulWidget {
  const HappyPage({Key? key}) : super(key: key);

  @override
  State<HappyPage> createState() => _HappyPageState();
}

class _HappyPageState extends State<HappyPage> {
//get the playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    //get playlist provider
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  //go to song
  void goToSong(int songIndex){
    //update current song index
    playlistProvider.currentSongIndex = songIndex;

    //navigate to song page
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => SongPage()
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      backgroundColor: Color.fromARGB(255, 97, 131, 185),
      appBar: AppBar(title: Text("HAPPY PLAYLIST")),
      drawer: const MyDrawer(),

      // Consumer Widget 
        body: Consumer<PlaylistProvider>(
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
