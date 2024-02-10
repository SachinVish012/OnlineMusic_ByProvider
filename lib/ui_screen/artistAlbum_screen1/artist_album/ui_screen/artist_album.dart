import 'package:flutter/material.dart';
import '../../../dashboard_screen/dashboard_widgets/musicPlay_widget.dart';
import '../../../dashboard_screen/dashboard_widgets/singleSong_widget.dart';
import '../widget/artist_top_widget.dart';
import '../widget/music_list_widget.dart';
import '../widget/new_release_widget.dart';

class ArtistAlbum extends StatefulWidget {
  const ArtistAlbum({super.key});

  @override
  State<ArtistAlbum> createState() => _ArtistAlbumState();
}

class _ArtistAlbumState extends State<ArtistAlbum> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Stack(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(
                  left: MediaQuery
                      .of(context)
                      .size
                      .width / 25,
                  top: MediaQuery
                      .of(context)
                      .size
                      .height / 25),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined, color: Colors.white,),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 1,
              margin: EdgeInsets.only(top: MediaQuery
                  .of(context)
                  .size
                  .height / 10 ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ArtistTopWidget(),
                    MusicListWidget(),
                    NewReleaseWidget(),
                    SingleSongWidget(),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: MusicPlayWidget()
          ),
        ],
      ),
    );
  }
}

