import 'package:flutter/material.dart';
import 'package:music_player/provider/dashboard_provider/dashboard_provder.dart';
import 'package:provider/provider.dart';

import '../../../res/toast_msg.dart';

class RecentlyPlayedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Container(
      //padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(top: height/30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Widget
          Container(
            padding: EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recently Played',
                  style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {

                  },
                  child: Text('See All',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          //SizedBox(height: 20.0), // Adding some space between widgets

          // Second Widget
         Consumer<DashboardProvider>(
           builder: (context, value, child) {
           return  Container(
             height: MediaQuery.of(context).size.height/6,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: value.singerName.length,
               itemBuilder: (BuildContext context, int index) {
                 return CircleAvatarWidget(name: value.singerName[index],img: value.singerImg[index],);
               },
             ),
           );
         },)
        ],
      ),
    );
  }
}

class CircleAvatarWidget extends StatelessWidget {
  final String name;
  final String img;

  CircleAvatarWidget({required this.name,required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              toastRed("Tapped on $name");
            },
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(img),
            ),
          ),

          SizedBox(height: 8.0),
          Text(name,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}