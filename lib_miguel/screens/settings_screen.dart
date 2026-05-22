import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const darkBlue = Color(0xFF566786);

    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              right: -18,
              child: Icon(
                Icons.shopping_bag,
                size: 110,
                color: Colors.white.withOpacity(0.20),
              ),
            ),
            Positioned(
              top: 110,
              left: -10,
              child: Icon(
                Icons.star,
                size: 90,
                color: Colors.white.withOpacity(0.22),
              ),
            ),
            Positioned(
              bottom: 210,
              right: -8,
              child: CircleAvatar(
                radius: 58,
                backgroundColor: const Color(0xFF9099A8).withOpacity(0.32),
                child: Icon(
                  Icons.star,
                  size: 70,
                  color: Colors.white.withOpacity(0.28),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(32, 74, 32, 110),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Configuraciones',
                    style: TextStyle(
                      color: darkBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 28),

                  SearchBox(),
                  SizedBox(height: 22),

                  SectionTitle('Quien puede ver tus reseñas'),
                  SizedBox(height: 14),
                  SettingCard(
                    icon: Icons.lock,
                    title: 'Privacidad de la cuenta',
                    value: 'Pública',
                  ),
                  SizedBox(height: 10),
                  SettingCard(
                    icon: Icons.block,
                    title: 'Bloqueados',
                    value: '0',
                  ),

                  SizedBox(height: 32),
                  SectionTitle('General'),
                  SizedBox(height: 14),
                  SettingCard(
                    icon: Icons.language,
                    title: 'Idioma',
                    value: 'Español',
                  ),
                  SizedBox(height: 10),
                  SettingCard(
                    icon: Icons.dark_mode,
                    title: 'Temas',
                    value: 'Claro',
                  ),
                  SizedBox(height: 10),
                  SettingCard(
                    icon: Icons.logout,
                    title: 'Cerrar sesión',
                  ),
                ],
              ),
            ),

            const Positioned(
              left: 32,
              right: 32,
              bottom: 28,
              child: BottomMenu(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F7FA).withOpacity(0.92),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: const [
          Icon(Icons.search, size: 20, color: Colors.black87),
          SizedBox(width: 16),
          Text(
            'Buscar ajustes',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;

  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF566786),
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class SettingCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? value;

  const SettingCard({
    super.key,
    required this.icon,
    required this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F7FA).withOpacity(0.93),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.13),
            blurRadius: 7,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: 22, color: Colors.black87),
          const SizedBox(width: 18),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
          ),
          if (value != null)
            Text(
              value!,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black87,
              ),
            ),
          const SizedBox(width: 16),
          const Icon(Icons.chevron_right, size: 28, color: Colors.black87),
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
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F6FA),
        borderRadius: BorderRadius.circular(34),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.home, size: 25, color: Colors.black87),
          Icon(Icons.search, size: 25, color: Colors.black87),
          Icon(Icons.person, size: 25, color: Colors.black87),
          ActiveSettingsItem(),
        ],
      ),
    );
  }
}

class ActiveSettingsItem extends StatelessWidget {
  const ActiveSettingsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 44,
      decoration: BoxDecoration(
        color: Color(0xFFDDE8FF),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.settings, color: Color(0xFF314C8A), size: 26),
          SizedBox(width: 8),
          Text(
            'Ajustes',
            style: TextStyle(
              color: Color(0xFF314C8A),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}