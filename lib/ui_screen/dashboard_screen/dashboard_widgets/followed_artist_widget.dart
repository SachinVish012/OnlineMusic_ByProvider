import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/dashboard_provider/dashboard_provder.dart';

class FollowedArtistWidget extends StatelessWidget {
  const FollowedArtistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height/50),
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
                  'Followed Artist',
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

          Consumer<DashboardProvider>(
            builder: (context, value, child) {
              return  Container(
                height: MediaQuery.of(context).size.height/6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.songName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CircleAvatarWidget(name: value.songName[index],img: value.songImg[index],);
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
          Container(
            width: 60.0, // Set the desired width
            height: 60.0, // Set the desired height
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0), // Set border radius if needed
              image: DecorationImage(
                // Replace the placeholder image with the actual image source
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(name,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
