import 'package:flutter/material.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({super.key});

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            decoration: BoxDecoration(
              color: const Color(0xff65b890),
              borderRadius: BorderRadius.circular(2.5),
            ),
            child: Center(
              child: TextField(
                controller: emailController,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email),
                  prefixIconColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Enter your email",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            decoration: BoxDecoration(
              color: const Color(0xff65b890),
              borderRadius: BorderRadius.circular(2.5),
            ),
            child: Center(
              child: TextField(
                controller: ageController,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_month),
                  prefixIconColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Enter your age",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            decoration: BoxDecoration(
              color: const Color(0xff65b890),
              borderRadius: BorderRadius.circular(2.5),
            ),
            child: Center(
              child: TextField(
                controller: firstNameController,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Enter your first name",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            decoration: BoxDecoration(
              color: const Color(0xff65b890),
              borderRadius: BorderRadius.circular(2.5),
            ),
            child: Center(
              child: TextField(
                controller: lastNameController,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  prefixIconColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Enter your last name",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              print(emailController.text);
              print(ageController.text);
              print(firstNameController.text);
              print(lastNameController.text);
            },
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 80, vertical: 0),
              ),
            ),
            child: const Text(
              "Register",
              style: TextStyle(
                color: Color(0xff65b890),
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
