import 'package:flutter/material.dart';
import 'package:flutter_it/screens/start_screen/start_screen.dart';
import 'package:flutter_it/screens/register_screen/register_screen.dart';
import 'package:flutter_it/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:flutter_it/screens/settings_screen/settings_screen.dart';
import 'package:flutter_it/screens/profile_screen/profile_screen.dart';
import 'package:flutter_it/screens/home_screen/home_screen.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen()
      //ProfileScreen()
      //SettingsScreen()
      //StartScreen()
      //RegisterScreen()
      //EditProfileScreen()
      //HomeScreen()
    );
  }
}
