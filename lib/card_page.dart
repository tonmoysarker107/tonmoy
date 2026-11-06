import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CardPage"),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text("Card Page")),
    );
  }
}
