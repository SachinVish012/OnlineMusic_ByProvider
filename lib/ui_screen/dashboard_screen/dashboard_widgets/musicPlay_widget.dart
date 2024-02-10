import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/dashboard_provider/dashboard_provder.dart';

class MusicPlayWidget extends StatefulWidget {
  const MusicPlayWidget({super.key});

  @override
  State<MusicPlayWidget> createState() => _MusicPlayWidgetState();
}

class _MusicPlayWidgetState extends State<MusicPlayWidget> {



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
      padding: EdgeInsets.all(5.0),
      height: 48,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xff343434),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: [
                // Left side: Image and Text
                Container(
                  width: 26.0,
                  height: 26.0,
                  margin: EdgeInsets.only(right: 16.0,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage('assets/song_image.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Expanded(
                  child: Text(
                    'Song Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),

                // Right side: Favorite and Music Play icons
                Consumer<DashboardProvider>(
                  builder: (context, value, child) {
                    return  InkWell(
                      onTap: (){
                        value.ChangefavouriteIcon();
                      },
                      child: Icon(
                        value.tap?Icons.favorite:Icons.favorite_border_outlined,
                        color: value.tap?Colors.redAccent:Colors.white,
                        size: 25.0,
                      ),
                    );
                  },),

                SizedBox(width: 16.0),
                Consumer<DashboardProvider>(builder: (context, value, child) {
                  return InkWell(
                    onTap: (){
                     value.MusicTapped();
                    },
                    child: Icon(
                      value.musictap?Icons.pause_circle_outline:Icons.play_circle_outline,
                      color: Colors.white,
                      size: 25.0,
                    ),
                  );
                },)
              ],
            ),
          ),
          Consumer<DashboardProvider>(
            builder: (context, value, child) {
            return Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 4),
              child: LinearProgressIndicator(
                value: value.musicvalue,
                borderRadius: BorderRadius.circular(5),
                color: Colors.redAccent,// Replace with your desired progress value
              ),
            );
          },)

        ],
      ),
    );
  }

}

