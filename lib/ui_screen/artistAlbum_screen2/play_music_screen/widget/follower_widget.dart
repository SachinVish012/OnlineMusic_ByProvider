import 'package:flutter/material.dart';

class FollowerWidget extends StatelessWidget {
  const FollowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25,right: 25,top: 15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('12345 Foloowers',style: TextStyle(color: Colors.white),),
                TextButton(
                  onPressed: () {
                    // Add your button functionality here
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                  ),
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white), // Set border color
                      borderRadius: BorderRadius.circular(25), // Set border radius
                    ),
                    child: Center(
                      child: Text(
                        'Follow',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            icon: Icon(Icons.play_circle_outline,color: Colors.white,size: 36,),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}
