import 'package:flutter/material.dart';

class MusicListWidget extends StatelessWidget {
   MusicListWidget({super.key});
  final List<String> dataList = [
    'Song Name 1',
    'Song Name 2',
    'Song Name 3',
    'Song Name 4',
    'Song Name 5',
  ];
  final List<String> dataList2 = [
    'Name 1',
    'Name 2',
    'Name 3',
    'Name 4',
    'Name 5',
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height/2.2,
      child: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return MyListRow(data: dataList[index],data2:dataList2[index]);
        },
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
