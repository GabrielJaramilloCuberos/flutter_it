import 'package:flutter/material.dart';

class ReviewEditorScreen extends StatelessWidget {
  const ReviewEditorScreen({super.key});

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
                  SizedBox(height: 34),
                  TitleRow(),
                  SizedBox(height: 36),
                  ReviewEditorCard(),
                  SizedBox(height: 28),
                  SaveButton(),
                  SizedBox(height: 16),
                  DeleteButton(),
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
            fontSize: 30,
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

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.arrow_back, size: 38),
        SizedBox(width: 16),
        Text(
          'Editar reseña',
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.w500,
            color: Color(0xFF566786),
          ),
        ),
      ],
    );
  }
}

class ReviewEditorCard extends StatelessWidget {
  const ReviewEditorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F8),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: const [
          ProductHeader(),
          SizedBox(height: 44),
          Text(
            '¿Qué te parece este producto?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: Color(0xFF566786),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 30),
          LikeDislikeSelector(),
          SizedBox(height: 42),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Tu opinión',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF566786),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 18),
          OpinionBox(),
        ],
      ),
    );
  }
}

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 126,
          height: 126,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Image.asset(
            'assets/images/queso_campesino.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 24),
        const Expanded(
          child: Text(
            'Queso campesino\n250 g',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              height: 1.15,
            ),
          ),
        ),
      ],
    );
  }
}

class LikeDislikeSelector extends StatelessWidget {
  const LikeDislikeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      decoration: BoxDecoration(
        color: const Color(0xFFE4F4E5),
        borderRadius: BorderRadius.circular(42),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 92,
            height: 92,
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
              Icons.thumb_up_alt_outlined,
              color: Color(0xFF168438),
              size: 43,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 54),
            child: Icon(
              Icons.thumb_down_alt_outlined,
              color: Color(0xFF9AA29B),
              size: 43,
            ),
          ),
        ],
      ),
    );
  }
}

class OpinionBox extends StatelessWidget {
  const OpinionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 22, 24, 22),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F8),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.black26,
          width: 1.4,
        ),
      ),
      child: const Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Me gusta el queso',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF566786),
          foregroundColor: Colors.white,
          elevation: 8,
          shadowColor: Colors.black38,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Text(
          'Guardar cambios',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF993A35),
          foregroundColor: Colors.white,
          elevation: 5,
          shadowColor: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Text(
          'Eliminar reseña',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
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