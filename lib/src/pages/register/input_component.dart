import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({super.key});

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  bool error = false;
  String firebaseMessage = "";

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
                onChanged: (String text) {
                  setState(() {
                    error = false;
                  });
                },
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
            height: 5,
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
                onChanged: (String text) {
                  setState(() {
                    error = false;
                  });
                },
                obscureText: true,
                controller: passwordController,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  prefixIconColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Enter your password",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
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
                onChanged: (String text) {
                  setState(() {
                    error = false;
                  });
                },
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
            height: 5,
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
                onChanged: (String text) {
                  setState(() {
                    error = false;
                  });
                },
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
            height: 5,
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
                onChanged: (String text) {
                  setState(() {
                    error = false;
                  });
                },
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
          error
              ? const Text(
                  "Error occurred",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                )
              : Container(),
          firebaseMessage.isNotEmpty ? Text(firebaseMessage) : Container(),
          TextButton(
            onPressed: () async {
              if (emailController.text == "" ||
                  passwordController.text == "" ||
                  ageController.text == "" ||
                  firstNameController.text == "" ||
                  lastNameController.text == "") {
                return setState(() {
                  error = true;
                });
              }

              try {
                UserCredential userCredential = await FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text);

                setState(() {
                  firebaseMessage =
                      "User created: ${userCredential.user?.email}";
                });
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  setState(() {
                    firebaseMessage = "The password provided is too weak.";
                  });
                } else if (e.code == 'email-already-in-use') {
                  setState(() {
                    firebaseMessage =
                        'The account already exists for that email.';
                  });
                }
              } catch (e) {
                setState(() {
                  firebaseMessage = e.toString();
                });
              }
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
