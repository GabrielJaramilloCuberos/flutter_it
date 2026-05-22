import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30, 24, 30, 120),
              child: Column(
                children: [
                  const Header(),
                  const SizedBox(height: 26),

                  /// FOTO PERFIL
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 170,
                        height: 170,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F6FA),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black87,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.18),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.person_outline,
                          size: 110,
                          color: Colors.black87,
                        ),
                      ),

                      Positioned(
                        bottom: -12,
                        child: Container(
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDDE8FF),
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.14),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Seleccionar imagen',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2F3A4F),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  const Text(
                    'Editar perfil',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Actualiza tu información personal',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF566786),
                    ),
                  ),

                  const SizedBox(height: 42),

                  buildLabel('Nombre:'),

                  const SizedBox(height: 12),

                  buildInput(
                    hint: 'marianagarciarodriguez',
                  ),

                  const SizedBox(height: 28),

                  buildLabel('Email:'),

                  const SizedBox(height: 12),

                  buildInput(
                    hint: 'marianagarciarodriguez@gmail.com',
                  ),

                  const SizedBox(height: 28),

                  buildLabel('Contraseña'),

                  const SizedBox(height: 12),

                  buildPasswordInput(),

                  const SizedBox(height: 42),

                  SizedBox(
                    width: double.infinity,
                    height: 66,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF566786),
                        foregroundColor: Colors.white,
                        elevation: 8,
                        shadowColor: Colors.black38,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      child: const Text(
                        'Guardar Cambios',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Positioned(
              left: 28,
              right: 28,
              bottom: 18,
              child: BottomMenu(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget buildInput({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.black87,
          fontSize: 16,
        ),
        filled: true,
        fillColor: const Color(0xFFF4F6FA),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget buildPasswordInput() {
    return TextField(
      obscureText: obscurePassword,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        hintStyle: const TextStyle(
          color: Colors.black54,
          fontSize: 16,
        ),
        filled: true,
        fillColor: const Color(0xFFF4F6FA),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            obscurePassword
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Colors.black54,
          ),
          onPressed: () {
            setState(() {
              obscurePassword = !obscurePassword;
            });
          },
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
        UserIcon(size: 48, iconSize: 30),
        Spacer(),
        Text(
          'buy it.',
          style: TextStyle(
            fontSize: 30,
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
          width: 1.5,
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
      height: 76,
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
          Icon(Icons.add, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.person, size: 30),
        ],
      ),
    );
  }
}