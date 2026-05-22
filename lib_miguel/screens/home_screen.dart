import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const darkBlue = Color(0xFF566786);
    const background = Color(0xFFD8DDE5);

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 105,
              right: -55,
              child: Icon(
                Icons.shopping_bag,
                size: 150,
                color: Colors.white.withOpacity(0.22),
              ),
            ),
            Positioned(
              top: 155,
              left: 20,
              child: Icon(
                Icons.star,
                size: 85,
                color: Colors.white.withOpacity(0.25),
              ),
            ),
            Positioned(
              bottom: 210,
              right: -10,
              child: CircleAvatar(
                radius: 58,
                backgroundColor: const Color(0xFF9099A8).withOpacity(0.35),
                child: Icon(
                  Icons.star,
                  size: 70,
                  color: Colors.white.withOpacity(0.30),
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              left: -25,
              child: Icon(
                Icons.shopping_cart,
                size: 110,
                color: Colors.white.withOpacity(0.20),
              ),
            ),

            Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(34, 20, 34, 105),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.account_circle_outlined, size: 36),
                            Spacer(),
                            Text(
                              'buy it.',
                              style: TextStyle(
                                color: Color(0xFF2F3A4F),
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            SizedBox(width: 36),
                          ],
                        ),
                        const SizedBox(height: 36),

                        Center(
                          child: Column(
                            children: [
                              const Text(
                                'Bienvenido a',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF333333),
                                ),
                              ),
                              const Text(
                                'Buy It',
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.w700,
                                  color: darkBlue,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 18,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDDE8FF),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: const Text(
                                  'Tu comunidad de compras inteligentes',
                                  style: TextStyle(
                                    color: Color(0xFF243F78),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 32),
                        const Text(
                          'Nuestros Servicios',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 14),

                        const ServiceCard(
                          icon: Icons.chat_bubble_outline,
                          title: 'Ask It',
                          description:
                              'Consulta con expertos y obtén respuestas personalizadas antes de comprar.',
                        ),
                        const SizedBox(height: 14),
                        const ServiceCard(
                          icon: Icons.auto_awesome,
                          title: 'Catálogo',
                          description:
                              'Mira qué están comprando tus amigos y qué es lo más popular hoy.',
                        ),

                        const SizedBox(height: 34),
                        const Text(
                          '¿Cómo funciona Buy It?',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 18),

                        const StepItem(
                          icon: Icons.search,
                          title: 'Busca',
                          description:
                              'Encuentra cualquier producto en nuestro catálogo global.',
                        ),
                        const SizedBox(height: 22),
                        const StepItem(
                          icon: Icons.compare_arrows,
                          title: 'Compara',
                          description:
                              'Revisa precios reales y opiniones de otros usuarios.',
                        ),
                        const SizedBox(height: 22),
                        const StepItem(
                          icon: Icons.rate_review_outlined,
                          title: 'Opina',
                          description:
                              'Comparte tu experiencia y ayuda a la comunidad.',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Positioned(
              left: 34,
              right: 34,
              bottom: 18,
              child: Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6FA),
                  borderRadius: BorderRadius.circular(32),
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
                    ActiveNavItem(),
                    Icon(Icons.search, size: 25, color: Colors.black87),
                    Icon(Icons.person, size: 25, color: Colors.black87),
                    Icon(Icons.settings, size: 25, color: Colors.black87),
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

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F8).withOpacity(0.92),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xFFDDE6F4),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(icon, color: const Color(0xFF566786), size: 30),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF333333),
                    height: 1.35,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward, color: Colors.grey),
        ],
      ),
    );
  }
}

class StepItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const StepItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: const Color(0xFF566786), size: 22),
        const SizedBox(width: 18),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  )),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF333333),
                  height: 1.35,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ActiveNavItem extends StatelessWidget {
  const ActiveNavItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94,
      height: 42,
      decoration: BoxDecoration(
        color: const Color(0xFFDDE8FF),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.home, color: Color(0xFF314C8A), size: 25),
          SizedBox(width: 7),
          Text(
            'Inicio',
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