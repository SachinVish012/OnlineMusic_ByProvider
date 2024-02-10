import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../res/toast_msg.dart';
import '../../../menu_screen/menu_screen.dart';

class TopWidget extends StatefulWidget {
  const TopWidget({super.key});

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
         IconButton(
            icon: Image.asset('assets/down-arrow.png',height: 20,width: 20,color: Colors.white,),
            onPressed: () {
              print("back");
              Navigator.pushReplacement(
                context,
                PageTransition(
                  type: PageTransitionType.topToBottom,
                  duration: Duration(seconds: 1),
                  child: MenuScreen(),
                ),
              );
            // Navigator.pop(context);
            },
            color: Colors.white,
          ),

          Expanded(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Now Playing',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
          ),

          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){
                  toastRed("Tapped on Favorite");
                },
                  child: Icon(Icons.favorite,color: Colors.white,
                  )
              )
          ),
          // Upload Icon
          IconButton(
            icon: Icon(Icons.file_upload_outlined),
            onPressed: () {
              toastRed("Tapped on Upload");
            },
            color: Colors.white,
          ),
        ],
    );
  }
}
