import 'package:flutter/material.dart';
import 'package:music_player/provider/dashboard_provider/dashboard_provder.dart';
import 'package:music_player/ui_screen/dashboard_screen/dashboard_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>DashboardProvider()),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashboardScreen(),
      ),
    );
  }
}