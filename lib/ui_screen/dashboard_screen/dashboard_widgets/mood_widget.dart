import 'package:flutter/material.dart';

class MoodWidget extends StatelessWidget {
  const MoodWidget({super.key});

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
                  'Mood',
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
          //SizedBox(height: 5.0), // Adding some space between widgets

          // Second Widget
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CircleAvatarWidget(name: 'No Love'),
                CircleAvatarWidget(name: 'If You'),
                CircleAvatarWidget(name: 'Elevated'),
                CircleAvatarWidget(name: 'Elevated'),
                CircleAvatarWidget(name: 'If You'),
                CircleAvatarWidget(name: 'No Love'),
                CircleAvatarWidget(name: 'Elevated'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class CircleAvatarWidget extends StatelessWidget {
  final String name;

  CircleAvatarWidget({required this.name});

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
                image: AssetImage('assets/song_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(name,style: TextStyle(color: Colors.white,fontSize: 12),),
          SizedBox(height: 2.0),
          Text("Singer",style: TextStyle(color: Colors.white,fontSize: 10),),
        ],
      ),
    );
  }
}
