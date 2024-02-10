import 'package:flutter/material.dart';

class SingleSongWidget extends StatelessWidget {
  const SingleSongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            width: 300,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/single_song.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Song Name\nDiscover 74\nSongs!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.0),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff3b3537),
                  child: IconButton(
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicPlayUI()));
                    },
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
