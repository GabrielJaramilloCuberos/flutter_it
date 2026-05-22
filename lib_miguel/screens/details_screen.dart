import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30, 22, 30, 115),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Header(),
                  SizedBox(height: 28),
                  BackButtonCircle(),
                  SizedBox(height: 28),
                  ProductImage(),
                  SizedBox(height: 28),
                  Text(
                    'Queso campesino 250 g',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Para desayuno, arepas y sándwiches.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF333333),
                    ),
                  ),
                  SizedBox(height: 28),
                  ActionCard(
                    icon: Icons.edit,
                    text: 'Comparar precios en tiendas',
                  ),
                  SizedBox(height: 34),
                  Text(
                    'Opiniones del producto',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 22),
                  ReviewCard(),
                  SizedBox(height: 34),
                  OpinionButton(),
                ],
              ),
            ),
            const Positioned(
              left: 25,
              right: 25,
              bottom: 18,
              child: BottomMenu(),
            ),
          ],
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
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F6FA),
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black87,
              width: 1.5,
            ),
          ),
          child: const Icon(
            Icons.person_outline,
            size: 28,
            color: Colors.black87,
          ),
        ),
        const Spacer(),
        const Text(
          'buy it.',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2F3A4F),
          ),
        ),
        const Spacer(),
        const SizedBox(width: 44),
      ],
    );
  }
}

class BackButtonCircle extends StatelessWidget {
  const BackButtonCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FA),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 9,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: const Icon(Icons.arrow_back, size: 34),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F6EE),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.22),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/queso_campesino.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const ActionCard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E9F8),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF566786), size: 26),
          const SizedBox(width: 22),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFF4C5260),
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Icon(Icons.arrow_forward, size: 30),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F8),
        borderRadius: BorderRadius.circular(23),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
  children: [
    Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FA),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black87,
          width: 1.3,
        ),
      ),
      child: const Icon(
        Icons.person_outline,
        size: 28,
        color: Colors.black87,
      ),
    ),
    const SizedBox(width: 16),
    const Expanded(
      child: Text(
        'Salomon Avila\nUsuario verificado',
        style: TextStyle(
          fontSize: 15,
          height: 1.4,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    const CircleAvatar(
      radius: 25,
      backgroundColor: Color(0xFFDDE8FF),
      child: Icon(Icons.thumb_up, color: Color(0xFF566786)),
    ),
  ],
),
          const SizedBox(height: 20),
          const Text(
            'buen quesito',
            style: TextStyle(fontSize: 20),
          ),
          const Spacer(),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              '0 personas coincidieron',
              style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
            ),
          ),
        ],
      ),
    );
  }
}

class OpinionButton extends StatelessWidget {
  const OpinionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.edit, size: 30),
        label: const Text(
          'Escribir mi opinión',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF566786),
          foregroundColor: Colors.white,
          elevation: 9,
          shadowColor: Colors.black45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
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
          Icon(Icons.home, size: 32),
          Icon(Icons.search, size: 32),
          Icon(Icons.person, size: 32),
        ],
      ),
    );
  }
}