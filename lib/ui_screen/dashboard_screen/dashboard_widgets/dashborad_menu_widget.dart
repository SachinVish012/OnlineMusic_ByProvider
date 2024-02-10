import 'package:flutter/material.dart';
import 'package:music_player/provider/dashboard_provider/dashboard_provder.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../../../res/toast_msg.dart';
import '../../menu_screen/menu_screen.dart';

class DashboardMenuWidget extends StatelessWidget {
  const DashboardMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(top: height/30),
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              toastRed("Tapped on Profile");
            },
            child: Consumer<DashboardProvider>(
              builder: (context, value, child) {
                return Container(
                  width: 44.0, // Adjust the width as needed
                  height: 44.0, // Adjust the height as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(value.profileUrl), // Replace with your image
                  ),
                );
              },
            )
          ),
          SizedBox(width: 16.0),
          Consumer<DashboardProvider>(
              builder: (context, value, child) {
                return Text(
                  'Welcome Back !\n'+value.name,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                );
              },
          ),
          Spacer(), // To push icons to the right
          GestureDetector(
            onTap: (){
              toastRed("Tapped on Notification");
            },
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 25.0,
            ),
          ),
          SizedBox(width: 16.0),
          GestureDetector(
            onTap: (){
              toastRed("Tapped on Setting");
            },
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 25.0,
            ),
          ),
          SizedBox(width: 16.0),
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(seconds: 1),
                  child: MenuScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}