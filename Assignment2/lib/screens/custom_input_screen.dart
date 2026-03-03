import 'package:flutter/material.dart';
import 'custom_result_screen.dart';

class CustomInputScreen extends StatefulWidget {
  @override
  _CustomInputScreenState createState() => _CustomInputScreenState();
}

class _CustomInputScreenState extends State<CustomInputScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Broadcast Input")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: "Enter your message",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CustomResultScreen(message: controller.text),
                  ),
                );
              },
              child: Text("Send Broadcast"),
            ),
          ],
        ),
      ),
    );
  }
}
