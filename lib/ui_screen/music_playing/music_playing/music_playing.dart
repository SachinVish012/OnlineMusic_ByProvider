import 'package:flutter/material.dart';
import '../../artistAlbum_screen1/artist_album/widget/music_list_widget.dart';
import 'music_playing_widget/follower_download_widget.dart';
import 'music_playing_widget/play_icon_widgets.dart';
import 'music_playing_widget/top_widget.dart';

class MusicPlayingScreen extends StatefulWidget {
  const MusicPlayingScreen({super.key});

  @override
  State<MusicPlayingScreen> createState() => _MusicPlayingScreenState();
}

class _MusicPlayingScreenState extends State<MusicPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Stack(
        children: [
          Container(
                height: MediaQuery.of(context).size.height/2,
                child: Image.asset(
                  'assets/single_song.jpg', // Replace with your image URL
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xff121212),
                          Colors.black26
                        ]
                    )
                ),
              ),
          Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/15),
                      child: TopWidget()
                  ),
                  Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/6),
                      child: TopSecondWidget()
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: PlayIconWidget()),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: MusicListWidget(),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
