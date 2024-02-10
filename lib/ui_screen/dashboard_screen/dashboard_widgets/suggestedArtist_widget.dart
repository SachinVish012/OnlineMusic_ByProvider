import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/dashboard_provider/dashboard_provder.dart';

class SuggestedArtistWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Container(
      //padding: EdgeInsets.all(16.0),
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
                  'Suggested Artist',
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
                  itemCount: value.suggestedArtist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CircleAvatarWidget(name: value.suggestedArtist[index],img: value.suggestedArtistImg[index],);
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
          Stack(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(img),
              ),
              Positioned(
                top: 40,
                left: 45,
                child: Container(
                  height: 15,
                  width: 15,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Colors.red, // Set red background color
                    borderRadius: BorderRadius.circular(10.0), // Optional: Add rounded corners
                  ), // Adjust padding as needed
                ),
              ),
              Positioned(
                top: 40,
                left: 45,
                child: Icon(
                  Icons.add,
                  size: 14.0, // Adjust the icon size
                  color: Colors.white, // Set the icon color
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(name,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}