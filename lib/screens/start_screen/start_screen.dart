
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: Text("buy it", style: TextStyle(
        color: Colors.white,
        fontSize: 40
      ),),
    );
  }
}