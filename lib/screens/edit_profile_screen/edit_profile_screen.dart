import 'package:flutter/material.dart';
import '../start_screen/start_screen.dart'; // Reutiliza: TopTextField, CustomTextField, LoginButton

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                SizedBox(height: 40),
                EditProfileTitle(),
                SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.18),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ProfileAvatar(),
                      SizedBox(height: 12),
                      LoginButton(
                        buttonName: "Cambiar imagen",
                        buttonColor: Color(0xFFd2e4ff),
                      ),
                      SizedBox(height: 24),
                      fieldGroup(
                        label: "Nombre:",
                        child: CustomTextField(
                          hintText: "ksjabs",
                          prefixIcon: Icons.person_outline,
                        ),
                      ),
                      SizedBox(height: 20),
                      fieldGroup(
                        label: "Email:",
                        child: CustomTextField(
                          hintText: "prueba@mail.com",
                          prefixIcon: Icons.email_outlined,
                        ),
                      ),
                      SizedBox(height: 20),
                      fieldGroup(
                        label: "Contraseña",
                        child: CustomTextField(
                          hintText: "Contraseña",
                          prefixIcon: Icons.lock_outline,
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 28),
                      LoginButton(
                        buttonName: "Aplicar cambios",
                        buttonColor: Color(0xFF596884),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget fieldGroup({required String label, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopTextField(text: label),
        SizedBox(height: 8),
        child,
      ],
    );
  }
}


class EditProfileTitle extends StatelessWidget {
  const EditProfileTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Editar Perfil",
          style: TextStyle(
            color: Color(0xFF596884),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Actualiza tu información personal",
          style: TextStyle(
            color: Color(0xFF596884),
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/images/cactus.jpg',
        width: 120,
        height: 120,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          // Placeholder si la imagen no existe aún
          return Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFFd2e4ff),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person,
              size: 70,
              color: Color(0xFF596884),
            ),
          );
        },
      ),
    );
  }
}