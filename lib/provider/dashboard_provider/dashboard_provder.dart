import 'dart:async';

import 'package:flutter/material.dart';

class DashboardProvider with ChangeNotifier{

  //----for Name
  String _name="Name";
  String get name=>_name;

  //-----for Profile Image
  String _profileUrl='assets/profile_image.png';
  String get profileUrl=>_profileUrl;

  //-----recently played widget
  List<String> _singerName=['User 1','User 2','User 3','User 4','User 5','User 6','User 7'];
  List<String> get singerName=>_singerName;
  List<String> _singerImg=['assets/profile_image.png','assets/profile_image.png','assets/profile_image.png','assets/profile_image.png','assets/profile_image.png','assets/profile_image.png','assets/profile_image.png'];
  List<String> get singerImg=>_singerImg;

  //------followed Artist
  List<String> _songName=['Song Name','Song Name','Song Name','Song Name','Song Name','Song Name','Song Name'];
  List<String> get songName=>_songName;
  List<String> _songImg=['assets/song_image.jpg','assets/song_image.jpg','assets/song_image.jpg','assets/song_image.jpg','assets/song_image.jpg','assets/song_image.jpg','assets/song_image.jpg'];
  List<String> get songImg=>_songImg;

  //------Suggested Artist
  List<String> _suggestedArtist=['User 1','User 2','User 3','User 4','User 5','User 6','User 7'];
  List<String> get suggestedArtist=>_suggestedArtist;
  List<String> _suggestedArtistImg=['assets/profile_image.png','assets/profile_image.png','assets/profile_image.png','assets/profile_image.png','assets/profile_image.png','assets/profile_image.png','assets/profile_image.png'];
  List<String> get suggestedArtistImg=>_singerImg;

  //---------music play
  bool _tap=false;
  bool get tap=>_tap;

  bool _musictap=false;
  bool get musictap=>_musictap;

  double _musicvalue=0;
  double get musicvalue=>_musicvalue;

  late Timer _timer;
  Timer get timer=>_timer;

  void ChangefavouriteIcon(){
    if(tap)
    {
      _tap=false;
    }
    else
    {
      _tap=true;
    }
    notifyListeners();
  }

  void MusicTapped(){
    if(musictap)
    {
      _musictap=false;
      _timer.cancel();
    }
    else
    {
      _musictap=true;
      playProgressbar();

    }
    notifyListeners();
  }

    Timer playProgressbar() {
      return  _timer=Timer.periodic(Duration(seconds: 1), (Timer timer) {
        print("playing-------------");
        _musicvalue += 0.1;
        notifyListeners();
        if (_musicvalue >= 1.0) {
          _musictap=false;
          _musicvalue = 0.0;
          notifyListeners();
          if (timer.isActive) {
            timer.cancel();
          }
        }
      });
    }
}
