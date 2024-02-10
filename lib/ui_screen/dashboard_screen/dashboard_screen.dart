import 'package:flutter/material.dart';

import '../../res/app_color.dart';
import 'dashboard_widgets/dashborad_menu_widget.dart';
import 'dashboard_widgets/followed_artist_widget.dart';
import 'dashboard_widgets/mood_widget.dart';
import 'dashboard_widgets/musicPlay_widget.dart';
import 'dashboard_widgets/recently_played_widget.dart';
import 'dashboard_widgets/singleSong_widget.dart';
import 'dashboard_widgets/suggestedArtist_widget.dart';
import 'dashboard_widgets/topMixes_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    print("Dashboar_buid");
    return Scaffold(
        backgroundColor: AppColors.backgroundClr,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.topCenter,
            child: Image.asset('assets/top_image.png',),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DashboardMenuWidget(),
                  RecentlyPlayedWidget(),
                  FollowedArtistWidget(),
                  SuggestedArtistWidget(),
                  MoodWidget(),
                  SingleSongWidget(),
                  TopMixesWidget(),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: MusicPlayWidget()
          ),
        ],
      ),
    );
  }
}
