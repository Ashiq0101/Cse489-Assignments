import 'package:flutter/material.dart';

class CustomResultScreen extends StatelessWidget {
  final String message;

  CustomResultScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Broadcast Received")),
      body: Center(
        child: Text(
          "Received Message:\n\n$message",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
