import 'package:flutter/material.dart';
import 'package:music_player/ui_screen/artistAlbum_screen2/play_music_screen/widget/follower_widget.dart';
import 'package:music_player/ui_screen/artistAlbum_screen2/play_music_screen/widget/top_song_widget.dart';

import '../../dashboard_screen/dashboard_widgets/musicPlay_widget.dart';

class MusicPlayUI extends StatefulWidget {
  const MusicPlayUI({super.key});

  @override
  State<MusicPlayUI> createState() => _MusicPlayUIState();
}

class _MusicPlayUIState extends State<MusicPlayUI> {
  final List<String> dataList = [
    'Song Name 1',
    'Song Name 2',
    'Song Name 3',
    'Song Name 4',
    'Song Name 5',
    'Song Name 6',
  ];
  final List<String> dataList2 = [
    'Name 1',
    'Name 2',
    'Name 3',
    'Name 4',
    'Name 5',
    'Name 6',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width/25,
                    top: MediaQuery.of(context).size.height/25),
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TopSongWidget(),
                      FollowerWidget(),
                      Container(
                        height: 340,
                        child: ListView.builder(
                          itemCount: dataList.length,
                          itemBuilder: (context, index) {
                            return MyListRow(data: dataList[index],data2:dataList2[index]);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 100,
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
class MyListRow extends StatelessWidget {
  final String data;
  final String data2;

  const MyListRow({required this.data,required this.data2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Image widget with 15 radius
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              'assets/song_image.jpg', // Replace with your image URL
              width: 36.0,
              height: 36.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 8.0),
          // Column with two text widgets
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),
                Text(
                  data2,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.0),
          // Play icon button
          IconButton(
            icon: Icon(Icons.play_arrow,color: Colors.white,),
            onPressed: () {

            },
          ),
          // Three dotted icon button
          IconButton(
            icon: Icon(Icons.more_vert,color: Colors.white,),
            onPressed: () {

            },
          ),
        ],
      ),
    );
  }
}
