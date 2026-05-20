import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              //back boton
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              SizedBox(height: 16),
              // titulo
              Text(
                "Configuraciones",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF596884),
                ),
              ),
              SizedBox(height: 16),
              // Barra de búsqueda
              SettingsSearchBar(),
              SizedBox(height: 24),
              // Sección: Quién puede ver tus reseñas
              SettingsSectionLabel(text: "Quien pude ver tus reseñas"),
              SizedBox(height: 8),
              SettingsTile(
                icon: Icons.lock_outline,
                label: "Privacidad de la cuenta",
                value: "Pública",
              ),
              SizedBox(height: 8),
              SettingsTile(
                icon: Icons.block,
                label: "Bloqueados",
                value: "0",
              ),
              SizedBox(height: 24),
              // Sección: General
              SettingsSectionLabel(text: "General"),
              SizedBox(height: 8),
              SettingsTile(
                icon: Icons.language,
                label: "Idioma",
                value: "Español",
              ),
              SizedBox(height: 8),
              SettingsTile(
                icon: Icons.dark_mode_outlined,
                label: "Temas",
                value: "Claro",
              ),
              SizedBox(height: 8),
              SettingsTile(
                icon: Icons.logout,
                label: "Cerrar sesión",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? value;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.label,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black87, size: 22),
          SizedBox(width: 14),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (value != null) ...[
            Text(
              value!,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 6),
          ],
          Icon(Icons.chevron_right, color: Colors.grey, size: 22),
        ],
      ),
    );
  }
}

class SettingsSectionLabel extends StatelessWidget {
  final String text;

  const SettingsSectionLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        color: Color(0xFF596884),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class SettingsSearchBar extends StatelessWidget {
  const SettingsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey, size: 20),
          SizedBox(width: 10),
          Text(
            "Buscar ajustes",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}