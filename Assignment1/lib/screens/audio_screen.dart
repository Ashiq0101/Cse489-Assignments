import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioScreen extends StatefulWidget {
  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  final AudioPlayer player = AudioPlayer();

  void playAudio() async {
    await player.play(
      UrlSource(
        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
      ),
    );
  }

  void stopAudio() async {
    await player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Audio Player")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: playAudio, child: Text("Play Audio")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: stopAudio, child: Text("Stop Audio")),
          ],
        ),
      ),
    );
  }
}
