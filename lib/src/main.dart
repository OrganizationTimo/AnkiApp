import 'package:ankiapp/src/pages/login/login.dart';
import 'package:ankiapp/src/pages/register/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AnkiApp());
}

class AnkiApp extends StatefulWidget {
  const AnkiApp({super.key});

  @override
  State<AnkiApp> createState() => _AnkiAppState();
}

class _AnkiAppState extends State<AnkiApp> {
  bool isLoggedIn = false;

  void _setIsLoggedIn(bool newStatus) {
    setState(() {
      isLoggedIn = newStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FirebaseAuth.instance.currentUser != null
            ? SafeArea(
                child: TextButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    setState(() {
                      _setIsLoggedIn(false);
                    });
                  },
                  child: Text(
                    "Logout",
                  ),
                ),
              )
            : LoginPage(
                isLoggedIn: isLoggedIn,
                setIsLoggedIn: _setIsLoggedIn,
              ),
      ),
    );
  }
}
