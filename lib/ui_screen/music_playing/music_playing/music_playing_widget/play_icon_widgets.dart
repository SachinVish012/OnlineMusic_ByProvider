import 'package:flutter/material.dart';

import '../../../../res/toast_msg.dart';

class PlayIconWidget extends StatelessWidget {
  const PlayIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
    margin: EdgeInsets.only(left: 15,right: 15,),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
              child: Container()
          ),
          Flexible(
            flex: 1,
            child: Container(
              child: IconButton(
                icon: Icon(Icons.shuffle,color: Colors.white,size: 30,),
                onPressed: () {
                 toastRed("Tapped on shuffle Icon");
                },
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 2,
            child: IconButton(
              icon: Icon(Icons.skip_previous,color: Colors.white,size: 30,),
              onPressed: () {
                toastRed("Tapped on skip previous");
              },
            ),
          ),
          Flexible(
            flex: 2,
            child: IconButton(
              icon: Icon(Icons.pause_circle,color: Colors.white,size: 60,),
              onPressed: () {
                print("playing");
                toastRed("Tapped on pause");
                // Add your pause button logic here
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 2,
            child: IconButton(
              icon: Icon(Icons.skip_next,color: Colors.white,size: 30,),
              onPressed: () {
                toastRed("Tapped on skip next");
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: IconButton(
              icon: Image.asset('assets/exchange.png',height: 22,width: 22,color: Colors.white,),
              onPressed: () {
                toastRed("Tapped on change/exchange icon");
                // Add your change button logic here
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: IconButton(
              icon: Icon(Icons.more_vert_outlined,color: Colors.white,size: 30,),
              onPressed: () {
                toastRed("Tapped on more");
              },
            ),
          ),
        ],
      ),
    );
  }
}
