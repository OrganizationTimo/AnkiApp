import 'package:flutter/material.dart';

class HeroComponent extends StatelessWidget {
  const HeroComponent({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 175,
          child: Center(
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Color(0xff65b890),
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: Transform.rotate(
            angle: 5.9,
            child: const Icon(
              Icons.school,
              size: 70,
              color: Color(0xff4E878C),
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 40,
          child: Transform.rotate(
            angle: 50,
            child: const Icon(
              Icons.groups_outlined,
              size: 40,
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: 50,
          child: Transform.rotate(
            angle: 0.3,
            child: const Icon(
              Icons.library_books,
              size: 40,
            ),
          ),
        ),
        Positioned(
          top: 110,
          right: 40,
          child: Transform.rotate(
            angle: 0.3,
            child: const Icon(
              Icons.person_outline,
              size: 35,
              color: Color(0xff4E878C),
            ),
          ),
        ),
      ],
    );
  }
}
