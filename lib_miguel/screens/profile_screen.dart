import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(34, 35, 34, 115),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.settings, size: 34),
                  ),
                  SizedBox(height: 10),
                  UserProfileIcon(),
                  SizedBox(height: 14),
                  Text(
                    'Mariana García',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '@marianagarciarodriguez',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF566786),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 28),
                  ProfileStats(),
                  SizedBox(height: 28),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Tus reseñas',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  ReviewProductCard(
                    description:
                        'Me gusta el queso',
                  ),
                  SizedBox(height: 18),
                  ReviewProductCard(
                    description: 'Me encanta el queso',
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 34,
              right: 34,
              bottom: 18,
              child: BottomMenu(),
            ),
          ],
        ),
      ),
    );
  }
}

class UserProfileIcon extends StatelessWidget {
  const UserProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 165,
          height: 165,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F6FA),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black87, width: 1.4),
          ),
          child: const Icon(
            Icons.person_outline,
            size: 105,
            color: Colors.black87,
          ),
        ),
        Positioned(
          right: -16,
          bottom: 12,
          child: Container(
            height: 46,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F6FA),
              borderRadius: BorderRadius.circular(23),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.18),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: const [
                Icon(Icons.edit, size: 21),
                SizedBox(width: 8),
                Text(
                  'Editar',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        StatItem(number: 'Desde 2026', label: 'Miembro'),
        StatItem(number: '0', label: 'Seguidores'),
        StatItem(number: '0', label: 'Siguiendo'),
      ],
    );
  }
}

class StatItem extends StatelessWidget {
  final String number;
  final String label;

  const StatItem({
    super.key,
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Color(0xFF333333)),
        ),
      ],
    );
  }
}

class ReviewProductCard extends StatelessWidget {
  final String description;

  const ReviewProductCard({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F8),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 92,
            height: 92,
            padding: const EdgeInsets.all(6),
            color: Colors.white,
            child: Image.asset(
              'assets/images/queso_campesino.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Queso campesino 250 g',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12.5,
                    height: 1.25,
                  ),
                ),
                const Spacer(),
                Row(
                  children: const [
                    Icon(Icons.comment_outlined, size: 17),
                    SizedBox(width: 5),
                    Text(
                      '0 reseñas',
                      style: TextStyle(fontSize: 12.5),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F6FA),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            blurRadius: 14,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          ActiveProfileItem(),
        ],
      ),
    );
  }
}

class ActiveProfileItem extends StatelessWidget {
  const ActiveProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xFFDDE8FF),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.person, color: Color(0xFF314C8A), size: 27),
          SizedBox(width: 8),
          Text(
            'Perfil',
            style: TextStyle(
              color: Color(0xFF314C8A),
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}