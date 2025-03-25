import 'package:flutter/material.dart';

class InputLoginWidget extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;

  const InputLoginWidget({
    required this.icon,
    required this.hint,
    required this.obscure,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
              decoration: InputDecoration(
                icon: Icon(icon, color: Colors.white,),
                iconColor: Colors.white,
                hintText: hint,
                hintStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 21, 255, 0)),
                )
              ),
              style: TextStyle(color: Colors.white),
              obscureText: obscure,
    );
  }
}