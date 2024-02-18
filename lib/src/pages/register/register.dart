import 'package:flutter/material.dart';
import 'package:ankiapp/src/pages/register/hero_component.dart';
import 'input_component.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const HeroComponent(
            message: 'Register\nyour\nAccount!',
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Select your profile image"),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const InputComponent(),
        ],
      ),
    );
  }
}
