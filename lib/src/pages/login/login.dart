import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final bool isLoggedIn;
  final Function(bool) setIsLoggedIn;

  const LoginPage({
    Key? key,
    required this.isLoggedIn,
    required this.setIsLoggedIn,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextField(
            controller: emailController,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: passwordController,
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () async {
              var email = emailController.text;
              var password = passwordController.text;

              try {
                final credential = await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: email, password: password);

                setState(() {
                  widget.setIsLoggedIn(true);
                });
              } catch (e) {
                print(e.toString());
              }
            },
            child: Text("Submit"),
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            child: Text(
              "Logout",
            ),
          ),
        ],
      ),
    );
  }
}
