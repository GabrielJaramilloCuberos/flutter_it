import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const darkBlue = Color(0xFF566786);
    const textDark = Color(0xFF2F3A4F);
    const lightBlue = Color(0xFFD5E5FF);

    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 120,
              right: -70,
              child: CircleAvatar(
                radius: 135,
                backgroundColor: Colors.white.withOpacity(0.28),
              ),
            ),
            Positioned(
              bottom: 55,
              left: -80,
              child: CircleAvatar(
                radius: 165,
                backgroundColor: const Color(0xFF9099A8).withOpacity(0.45),
              ),
            ),
            Positioned(
              bottom: 100,
              right: -35,
              child: CircleAvatar(
                radius: 115,
                backgroundColor: Colors.white.withOpacity(0.22),
              ),
            ),

            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'buy it.',
                      style: TextStyle(
                        fontSize: 54,
                        fontWeight: FontWeight.w700,
                        color: textDark,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Descubre, compara y comparte opiniones',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF5E6573),
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),

                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 22, 20, 22),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F4F8).withOpacity(0.88),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.28),
                            blurRadius: 24,
                            offset: const Offset(8, 16),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Correo electrónico',
                            style: TextStyle(
                              color: darkBlue,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const CustomInput(
                            icon: Icons.email,
                            text: 'ejemplo@correo.com',
                          ),
                          const SizedBox(height: 22),

                          const Text(
                            'Contraseña',
                            style: TextStyle(
                              color: darkBlue,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const CustomInput(
                            icon: Icons.lock,
                            text: 'Tu contraseña',
                            trailingIcon: Icons.visibility_off,
                          ),
                          const SizedBox(height: 28),

                          Row(
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
                          ),
                          const SizedBox(height: 30),

                          SizedBox(
                            width: double.infinity,
                            height: 54,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: darkBlue,
                                foregroundColor: Colors.white,
                                elevation: 9,
                                shadowColor: Colors.black45,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: const Text(
                                'Iniciar Sesión',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 14),

                          SizedBox(
                            width: double.infinity,
                            height: 54,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: lightBlue,
                                foregroundColor: Colors.black,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: const Text(
                                'Crear Cuenta',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String text;
  final IconData? trailingIcon;

  const CustomInput({
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
            Icon(trailingIcon, color: Colors.black54, size: 24),
        ],
      ),
    );
  }
}