import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late final Player _player;
  late final VideoController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize media_kit (important for desktop)
    MediaKit.ensureInitialized();

    _player = Player();
    _controller = VideoController(_player);

    // Open network video
    _player.open(
      Media(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    );

    // Listen to player state changes to update UI automatically
    _player.stream.playing.listen((_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  void _togglePlay() {
    if (_player.state.playing) {
      _player.pause();
    } else {
      _player.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Video Player")),
      body: Column(
        children: [
          // Video takes available space safely
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Video(controller: _controller),
              ),
            ),
          ),

          // Play/Pause button at bottom
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: ElevatedButton(
              onPressed: _togglePlay,
              child: Text(_player.state.playing ? "Pause" : "Play"),
            ),
          ),
        ],
      ),
    );
  }
}
