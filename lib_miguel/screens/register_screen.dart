import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const darkBlue = Color(0xFF566786);
    const textDark = Color(0xFF2F3A4F);

    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 110,
              right: -70,
              child: CircleAvatar(
                radius: 125,
                backgroundColor: Colors.white.withOpacity(0.45),
              ),
            ),
            Positioned(
              top: 300,
              left: -120,
              child: CircleAvatar(
                radius: 150,
                backgroundColor: Colors.white.withOpacity(0.35),
              ),
            ),
            Positioned(
              bottom: 75,
              right: -80,
              child: CircleAvatar(
                radius: 155,
                backgroundColor: const Color(0xFF9099A8).withOpacity(0.45),
              ),
            ),

            Positioned(
              top: 72,
              left: 38,
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F6FA),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.18),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                  size: 23,
                ),
              ),
            ),

            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(40, 130, 40, 24),
              child: Column(
                children: [
                  const Text(
                    'Crear Cuenta',
                    style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.w600,
                      color: darkBlue,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Únete a nuestra comunidad hoy',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF6F7480),
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 44),

                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 22, 20, 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F4F8).withOpacity(0.9),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 22,
                          offset: const Offset(8, 15),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        FieldLabel('Nombre completo'),
                        SizedBox(height: 10),
                        RegisterInput(
                          icon: Icons.person,
                          text: 'Sebastian Angarita',
                        ),
                        SizedBox(height: 22),

                        FieldLabel('Nombre de usuario'),
                        SizedBox(height: 10),
                        RegisterInput(
                          icon: Icons.person_outline,
                          text: 'micho_dev',
                        ),
                        SizedBox(height: 22),

                        FieldLabel('Correo electrónico'),
                        SizedBox(height: 10),
                        RegisterInput(
                          icon: Icons.email,
                          text: 'ejemplo@correo.com',
                        ),
                        SizedBox(height: 22),

                        FieldLabel('Contraseña'),
                        SizedBox(height: 10),
                        RegisterInput(
                          icon: Icons.lock,
                          text: 'Mínimo 6 caracteres',
                          trailingIcon: Icons.visibility_off,
                        ),
                        SizedBox(height: 22),

                        FieldLabel('Confirmar contraseña'),
                        SizedBox(height: 10),
                        RegisterInput(
                          icon: Icons.lock,
                          text: 'Repite tu contraseña',
                          trailingIcon: Icons.visibility_off,
                        ),
                        SizedBox(height: 30),

                        RememberRow(),
                        SizedBox(height: 34),

                        PrimaryButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FieldLabel extends StatelessWidget {
  final String text;

  const FieldLabel(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF40547A),
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class RegisterInput extends StatelessWidget {
  final IconData icon;
  final String text;
  final IconData? trailingIcon;

  const RegisterInput({
    super.key,
    required this.icon,
    required this.text,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF566786), size: 21),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFF3D3D3D),
                fontSize: 14,
                letterSpacing: 1,
              ),
            ),
          ),
          if (trailingIcon != null)
            Icon(trailingIcon, color: Colors.black54, size: 25),
        ],
      ),
    );
  }
}

class RememberRow extends StatelessWidget {
  const RememberRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: false,
            onChanged: (_) {},
            side: const BorderSide(
              color: Colors.grey,
              width: 1.5,
            ),
          ),
        ),
        const SizedBox(width: 16),
        const Text(
          'Recordarme',
          style: TextStyle(
            color: Color(0xFF747A84),
            fontSize: 13,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF566786),
          foregroundColor: Colors.white,
          elevation: 9,
          shadowColor: Colors.black45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: const Text(
          'Empezar ahora',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}