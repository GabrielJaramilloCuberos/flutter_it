import 'package:flutter/material.dart';

class PricesScreen extends StatelessWidget {
  const PricesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 28, 24, 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Header(),
                  SizedBox(height: 38),
                  Text(
                    'Precios',
                    style: TextStyle(
                      fontSize: 46,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF566786),
                    ),
                  ),
                  SizedBox(height: 30),
                  StorePriceCard(
                    imagePath: 'assets/images/carulla.png',
                    storeName: 'Carulla',
                    price: '\$20,050',
                  ),
                  SizedBox(height: 24),
                  StorePriceCard(
                    imagePath: 'assets/images/olimpica.png',
                    storeName: 'Olímpica',
                    price: '\$58,090',
                  ),
                  SizedBox(height: 24),
                  StorePriceCard(
                    imagePath: 'assets/images/exito.png',
                    storeName: 'Éxito',
                    price: '\$31,120',
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 24,
              right: 24,
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
      children: const [
        UserIcon(size: 44, iconSize: 30),
        Spacer(),
        Text(
          'buy it.',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2F3A4F),
          ),
        ),
        Spacer(),
        SizedBox(width: 44),
      ],
    );
  }
}

class StorePriceCard extends StatelessWidget {
  final String imagePath;
  final String storeName;
  final String price;

  const StorePriceCard({
    super.key,
    required this.imagePath,
    required this.storeName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F8),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            blurRadius: 12,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 78,
            height: 78,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              storeName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Precio reportado',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 29,
                  color: Color(0xFF566786),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Tienda Verificada',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF2F3A4F),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
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
        border: Border.all(color: Colors.black87, width: 1.5),
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
          Icon(Icons.home, size: 32),
          Icon(Icons.search, size: 32),
          Icon(Icons.person, size: 32),
        ],
      ),
    );
  }
}