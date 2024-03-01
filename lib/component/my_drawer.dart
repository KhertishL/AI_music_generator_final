// import 'package:ai_music_generator/pages/settings_page.dart';
// import 'package:ai_music_generator/pages/song_page.dart';
import 'package:flutter/material.dart';
import 'package:ai_music_generator/pages/mood.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 40,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          //home tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
              title: const Text("H O M E"),
              leading: Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
          ),

          // settings tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("S E T T I N G S"),
              leading: Icon(Icons.settings),
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //navigate to settings page
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SettingsPage(),
                //   ),
                // );
              },
            ),
          ),

          //Mood Change Tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("C H A N G E  M O O D"),
              leading: Icon(Icons.settings),
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //navigate to settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstPage(),
                  ),
                );
              },
            ),
          ),

          //player_ui
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("P L A Y E R"),
              leading: Icon(Icons.settings),
              // onTap: () {
              //   //pop drawer
              //   Navigator.pop(context);

              //   //navigate to settings page
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => SongPage(),
              //     ),
              //   );
              // },
            ),
          ),
        ],
      ),
    );
  }
}