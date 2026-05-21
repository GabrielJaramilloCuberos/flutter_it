import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.person_outline, size: 28, color: Colors.black87),
                  Expanded(
                    child: Center(
                      child: Text(
                        "buy it.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF596884),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 28), // balance
                ],
              ),
            ),


            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),

                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Bienvenido a",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF596884),
                            ),
                          ),
                          Text(
                            "Buy It",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF596884),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFd2e4ff),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Tu comunidad de compras inteligentes",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF596884),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 28),

                    HomeSectionTitle(text: "Nuestros Servicios"),
                    SizedBox(height: 12),
                    ServiceCard(
                      icon: Icons.chat_outlined,
                      title: "Ask It",
                      description:
                          "Consulta con expertos y obtén respuestas personalizadas antes de comprar.",
                    ),
                    SizedBox(height: 10),
                    ServiceCard(
                      icon: Icons.auto_awesome,
                      title: "Explorar Tendencias",
                      description:
                          "Mira qué están comprando tus amigos y qué es lo más popular hoy.",
                    ),

                    SizedBox(height: 28),

                    HomeSectionTitle(text: "¿Cómo funciona Buy It?"),
                    SizedBox(height: 16),
                    HowItWorksItem(
                      icon: Icons.search,
                      title: "Busca",
                      description:
                          "Encuentra cualquier producto en nuestro catálogo global.",
                    ),
                    SizedBox(height: 16),
                    HowItWorksItem(
                      icon: Icons.compare_arrows,
                      title: "Compara",
                      description:
                          "Revisa precios, reseñas y opiniones de otros compradores entre varios sitios.",
                    ),
                    SizedBox(height: 16),
                    HowItWorksItem(
                      icon: Icons.star_outline,
                      title: "Opina",
                      description:
                          "Comparte tu experiencia y ayuda a otros a tomar mejores decisiones.",
                    ),
                    SizedBox(height: 32),
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


class HomeSectionTitle extends StatelessWidget {
  final String text;

  const HomeSectionTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.07),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFd2e4ff),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Color(0xFF596884), size: 24),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}

class HowItWorksItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const HowItWorksItem({
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
        Icon(icon, size: 24, color: Color(0xFF596884)),
        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 3),
              Text(
                description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}