import 'package:ankiapp/src/pages/register/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnkiApp());
}

class AnkiApp extends StatelessWidget {
  const AnkiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: RegisterPage(),
      ),
    );
  }
}
