import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8DDE5),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 80,
              right: -20,
              child: Icon(Icons.shopping_bag,
                  size: 130, color: Colors.white.withOpacity(0.22)),
            ),
            Positioned(
              top: 130,
              left: -15,
              child: Icon(Icons.star,
                  size: 95, color: Colors.white.withOpacity(0.25)),
            ),
            Positioned(
              bottom: 150,
              right: -18,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: const Color(0xFF9099A8).withOpacity(0.35),
                child: Icon(Icons.star,
                    size: 72, color: Colors.white.withOpacity(0.30)),
              ),
            ),

            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(36, 22, 36, 105),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Header(),
                  SizedBox(height: 34),
                  Text(
                    '↗ Explorar',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF566786),
                    ),
                  ),
                  SizedBox(height: 18),
                  SearchBarBox(),
                  SizedBox(height: 24),
                  FilterButtons(),
                  SizedBox(height: 48),
                  ProductCard(
                    image: '🧀',
                    title: 'Queso campesino 250 g',
                    description: 'Para desayuno, arepas y sándwiches.',
                    reviews: '9 reseñas',
                  ),
                  SizedBox(height: 26),
                  ProductCard(
                    image: '🫘',
                    title: 'Lenteja 500 g',
                    description: 'Fuente de proteína vegetal para sopas, guisos y ensaladas.',
                    reviews: '2 reseñas',
                  ),
                  SizedBox(height: 26),
                  ProductCard(
                    image: '🥤',
                    title: 'Yogurt bebible 200 ml',
                    description: 'Bebida láctea práctica para onces, lonchera o snack.',
                    reviews: '8 reseñas',
                  ),
                ],
              ),
            ),

            const Positioned(
              left: 36,
              right: 36,
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
        Icon(Icons.account_circle_outlined, size: 38),
        Spacer(),
        Text(
          'buy it.',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2F3A4F),
          ),
        ),
        Spacer(),
        SizedBox(width: 38),
      ],
    );
  }
}

class SearchBarBox extends StatelessWidget {
  const SearchBarBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FA).withOpacity(0.92),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.black54),
      ),
      child: Row(
        children: const [
          Expanded(
            child: Text(
              'Buscar en el catálogo',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF333333),
                letterSpacing: 1,
              ),
            ),
          ),
          Icon(Icons.search, size: 24, color: Colors.black87),
        ],
      ),
    );
  }
}

class FilterButtons extends StatelessWidget {
  const FilterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        FilterChipBox(
          icon: Icons.auto_awesome,
          text: 'Populares',
          active: true,
        ),
        SizedBox(width: 8),
        FilterChipBox(
          icon: Icons.groups,
          text: 'Seguidores',
          active: false,
        ),
      ],
    );
  }
}

class FilterChipBox extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool active;

  const FilterChipBox({
    super.key,
    required this.icon,
    required this.text,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: active ? const Color(0xFFDDE8FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF566786)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14, color: const Color(0xFF243F78)),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF243F78),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String reviews;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F8).withOpacity(0.93),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 78,
            height: 78,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFDDE6F4),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(image, style: const TextStyle(fontSize: 42)),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    height: 1.25,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.comment_outlined, size: 16),
                    const SizedBox(width: 5),
                    Text(
                      reviews,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 14),
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
          Icon(Icons.home, size: 24, color: Colors.black87),
          ActiveCatalogItem(),
          Icon(Icons.person, size: 24, color: Colors.black87),
          Icon(Icons.settings, size: 24, color: Colors.black87),
        ],
      ),
    );
  }
}

class ActiveCatalogItem extends StatelessWidget {
  const ActiveCatalogItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 42,
      decoration: BoxDecoration(
        color: Color(0xFFDDE8FF),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.search, color: Color(0xFF314C8A), size: 25),
          SizedBox(width: 7),
          Text(
            'Catálogo',
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