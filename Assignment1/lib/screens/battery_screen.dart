import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';

class BatteryScreen extends StatefulWidget {
  @override
  _BatteryScreenState createState() => _BatteryScreenState();
}

class _BatteryScreenState extends State<BatteryScreen> {
  final Battery _battery = Battery();
  int batteryLevel = 0;

  @override
  void initState() {
    super.initState();
    getBattery();
  }

  void getBattery() async {
    final level = await _battery.batteryLevel;
    setState(() {
      batteryLevel = level;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Battery Percentage")),
      body: Center(
        child: Text(
          "Battery Level: $batteryLevel%",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
