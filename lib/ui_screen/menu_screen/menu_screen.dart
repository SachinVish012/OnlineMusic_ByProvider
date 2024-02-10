import 'package:flutter/material.dart';
import 'package:music_player/res/app_color.dart';
import 'package:music_player/ui_screen/dashboard_screen/dashboard_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../artistAlbum_screen1/artist_album/ui_screen/artist_album.dart';
import '../artistAlbum_screen2/play_music_screen/play_music_screen.dart';
import '../music_playing/music_playing/music_playing.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundClr,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width/25,
                    top: MediaQuery.of(context).size.height/25),
                child: IconButton(
                  onPressed: (){
                     Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        duration: Duration(seconds: 1),
                        child: DashboardScreen(),
                      ),
                    );
                     Navigator.of(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/20,left: 10,right: 10),
              child: ElevatedButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(seconds: 1),
                      child: ArtistAlbum(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set background color to transparent
                  onPrimary: Colors.transparent, // Set text color to transparent
                  elevation: 0, // Set elevation to 0 to remove shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.white), // Set border color
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Artist Album',
                        style: TextStyle(
                          color: Colors.white, // Set text color
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child:  Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white, // Set icon color
                        ),
                      ),)
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/24,left: 10,right: 10),
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicPlayUI()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set background color to transparent
                  onPrimary: Colors.transparent, // Set text color to transparent
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.white), // Set border color
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Artist Album 2',
                        style: TextStyle(
                          color: Colors.white, // Set text color
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child:  Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white, // Set icon color
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/24,left: 10,right: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicPlayingScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set background color to transparent
                  onPrimary: Colors.transparent, // Set text color to transparent
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.white), // Set border color
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Music Playing',
                        style: TextStyle(
                          color: Colors.white, // Set text color
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child:  Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white, // Set icon color
                        ),
                      ),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}