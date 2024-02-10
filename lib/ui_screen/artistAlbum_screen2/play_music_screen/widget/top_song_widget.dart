import 'package:flutter/material.dart';

class TopSongWidget extends StatelessWidget {
  const TopSongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 220,
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage('assets/single_song.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 220,
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black45, Colors.black12], // Customize your gradient colors here
            ),
          ),
        ),
        Positioned(
          bottom: 16.0,
          child: Text(
            'Song Name',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
