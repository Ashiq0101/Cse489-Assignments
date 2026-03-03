import 'package:flutter/material.dart';
import 'custom_input_screen.dart';
import 'battery_screen.dart';

class BroadcastScreen extends StatefulWidget {
  @override
  _BroadcastScreenState createState() => _BroadcastScreenState();
}

class _BroadcastScreenState extends State<BroadcastScreen> {
  String selected = "Custom Broadcast Receiver";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Broadcast Receiver")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButton<String>(
              value: selected,
              items:
                  [
                    "Custom Broadcast Receiver",
                    "System Battery Notification Receiver",
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selected == "Custom Broadcast Receiver") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => CustomInputScreen()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => BatteryScreen()),
                  );
                }
              },
              child: Text("Proceed"),
            ),
          ],
        ),
      ),
    );
  }
}
