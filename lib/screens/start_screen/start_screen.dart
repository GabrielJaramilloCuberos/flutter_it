import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Spacer(),
              BuyItLogo(),
              Text(
                "Descubre, compara y comparte opiniones", 
                style: TextStyle(
                  color: const Color(0xFF596884),
                  fontSize: 15
                ),
              ),
              Spacer(),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopTextField(text: "Correo Electrónico"),
                        SizedBox(height: 8),
                        EmailField(),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopTextField(text: "Contraseña"),
                        SizedBox(height: 8),
                        PasswordField(),
                      ],
                    ),
                    SizedBox(height: 16),
                    RememberMeBox(),
                    SizedBox(height: 12),
                    LoginButton(buttonName: "Iniciar Sesión", buttonColor: Color(0xFF596884)),
                    SizedBox(height: 12),
                    LoginButton(buttonName: "Crear Cuenta", buttonColor: Color(0xFFd2e4ff)),
                  ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

class TopTextField extends StatelessWidget {
  final String text;
  const TopTextField({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        color: Color(0xFF596884),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class RememberMeBox extends StatelessWidget {
  const RememberMeBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
          activeColor: Color(0xFF596884),
        ),
        Text(
          "Recuérdame",
          style: TextStyle(
            color: Color(0xFF596884),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Tu contraseña",
        prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF596884)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFF596884), width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFF596884), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFF596884), width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "ejemplo@correo.com",
        prefixIcon: Icon(Icons.email_outlined, color: Color(0xFF596884)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFF596884), width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFF596884), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFF596884), width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      ),
    );
  }
}

class BuyItLogo extends StatelessWidget {
  const BuyItLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "buy it", 
      style: TextStyle(
        color: const Color(0xFF596884),
        fontSize: 50
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  const LoginButton({super.key, required this.buttonName, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: FilledButton(
        onPressed: () {}, 
        style: FilledButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        child: Text(this.buttonName),
      ),
    );
  }
}