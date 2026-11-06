import 'package:flutter/material.dart';

import 'homepage.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'card_page.dart'; // Friend er moto sob import kora thaklo

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: LoginPage(),
    );
  }
}
