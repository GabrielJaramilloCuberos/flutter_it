import 'package:flutter/material.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 34, 32, 115),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Header(),
                  SizedBox(height: 40),
                  TitleRow(),
                  SizedBox(height: 34),
                  UserFollowingItem(),
                ],
              ),
            ),
            const Positioned(
              left: 32,
              right: 32,
              bottom: 22,
              child: BottomMenu(),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        UserIcon(size: 48, iconSize: 32),
        Spacer(),
        Text(
          'buy it.',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2F3A4F),
          ),
        ),
        Spacer(),
        SizedBox(width: 48),
      ],
    );
  }
}

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.arrow_back, size: 32, color: Colors.black87),
        SizedBox(width: 18),
        Text(
          'Siguiendo',
          style: TextStyle(
            fontSize: 31,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}

class UserFollowingItem extends StatelessWidget {
  const UserFollowingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        UserIcon(size: 58, iconSize: 38),
        SizedBox(width: 18),
        Expanded(
          child: Text(
            'Mariana Garcia Rodriguez',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ],
    );
  }
}

class UserIcon extends StatelessWidget {
  final double size;
  final double iconSize;

  const UserIcon({
    super.key,
    required this.size,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FA),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black87,
          width: 1.8,
        ),
      ),
      child: Icon(
        Icons.person_outline,
        size: iconSize,
        color: Colors.black87,
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      decoration: BoxDecoration(
        color: const Color(0xFFD5E7FF),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 14,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.groups, size: 30, color: Colors.white),
          Icon(Icons.search, size: 31, color: Colors.white),
          Icon(Icons.person, size: 31, color: Colors.white),
        ],
      ),
    );
  }
}