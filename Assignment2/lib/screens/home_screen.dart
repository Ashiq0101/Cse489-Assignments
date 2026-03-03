import 'package:flutter/material.dart';
import 'broadcast_screen.dart';
import 'image_scale_screen.dart';
import 'video_screen.dart';
import 'audio_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Assignment 2")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text("Broadcast Receiver"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BroadcastScreen()),
                );
              },
            ),
            ListTile(
              title: Text("Image Scale"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ImageScaleScreen()),
                );
              },
            ),
            ListTile(
              title: Text("Video"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => VideoScreen()),
                );
              },
            ),
            ListTile(
              title: Text("Audio"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AudioScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("Select from Drawer Menu")),
    );
  }
}
