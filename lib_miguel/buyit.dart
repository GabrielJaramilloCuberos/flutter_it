import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/products_screen.dart';
import 'screens/details_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/review_screen.dart';
import 'screens/stores_screen.dart';
import 'screens/following_screen.dart';
import 'screens/followers_screen.dart';
import 'screens/edit_profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // home: LoginScreen(),
      // home: RegisterScreen(),
      // home: CatalogScreen(),
      // home: ProductDetailScreen(),
      // home: SettingsScreen(),
      // home: ProfileScreen(),
      // home: ReviewEditorScreen(),
      // home: PricesScreen(),
      // home: FollowingScreen(),
      // home: FollowersScreen(),
      // home: EditProfileScreen(),
    );
  }
}