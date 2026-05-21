import 'package:flutter/material.dart';
import '../start_screen/start_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                RegisterTitle(),
                SizedBox(height: 32),
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
                      fieldGroup(
                        label: "Nombre completo",
                        child: CustomTextField(
                          hintText: "Sebastian Angarita",
                          prefixIcon: Icons.person_outline,
                        ),
                      ),
                      SizedBox(height: 20),
                      fieldGroup(
                        label: "Nombre de usuario",
                        child: CustomTextField(
                          hintText: "micho_dev",
                          prefixIcon: Icons.person_outline,
                        ),
                      ),
                      SizedBox(height: 20),
                      fieldGroup(
                        label: "Correo electrónico",
                        child: CustomTextField(
                          hintText: "ejemplo@correo.com",
                          prefixIcon: Icons.email_outlined,
                        ),
                      ),
                      SizedBox(height: 20),
                      fieldGroup(
                        label: "Contraseña",
                        child: CustomTextField(
                          hintText: "Mínimo 6 caracteres",
                          prefixIcon: Icons.lock_outline,
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 20),
                      fieldGroup(
                        label: "Confirmar contraseña",
                        child: CustomTextField(
                          hintText: "Repite tu contraseña",
                          prefixIcon: Icons.lock_outline,
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 16),
                      RememberMeBox(),
                      SizedBox(height: 12),
                      LoginButton(
                        buttonName: "Empezar ahora",
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



class RegisterTitle extends StatelessWidget {
  const RegisterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Crear Cuenta",
          style: TextStyle(
            color: Color(0xFF596884),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Únete a nuestra comunidad hoy",
          style: TextStyle(
            color: Color(0xFF596884),
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}