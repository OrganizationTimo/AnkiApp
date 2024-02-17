import 'package:flutter/material.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({super.key});

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          decoration: BoxDecoration(
            color: const Color(0xff65b890),
            borderRadius: BorderRadius.circular(2.5),
          ),
          child: const Center(
            child: TextField(
              textAlign: TextAlign.center,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
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
          child: const Center(
            child: TextField(
              textAlign: TextAlign.center,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
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
          child: const Center(
            child: TextField(
              textAlign: TextAlign.center,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
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
          child: const Center(
            child: TextField(
              textAlign: TextAlign.center,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
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
          height: 30,
        ),
        Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xff65b890),
              width: 2,
            ),
          ),
          child: const Center(
            child: Text(
              "Register",
              style: TextStyle(
                color: Color(0xff65b890),
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
