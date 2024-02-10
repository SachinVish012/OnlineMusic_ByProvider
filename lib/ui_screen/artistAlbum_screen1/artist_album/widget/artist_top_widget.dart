import 'package:flutter/material.dart';


class ArtistTopWidget extends StatelessWidget {
  const ArtistTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16.0),
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name', style: TextStyle(
                      color: Colors.white, fontSize: 24),),
                  Text('12345 Foloowers',
                    style: TextStyle(color: Colors.white),),
                  TextButton(
                    onPressed: () {
                      // Add your button functionality here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.transparent),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.all(0)),
                    ),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        // Set border color
                        borderRadius: BorderRadius.circular(
                            25), // Set border radius
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
          ),

          // Second Widget with Play Icon
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                radius: 34,
                backgroundColor: Color(0xff3b3537),
                child: IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.redAccent,
                    size: 36,
                  ),
                  onPressed: () {
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicPlayUI()));
                  },
                ),
              ),
            ),)
        ],
      ),
    );
  }
}
