import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

enum Source { Asset, Network }

class DeadliftRomento extends StatefulWidget {
  const DeadliftRomento({super.key});

  @override
  State<DeadliftRomento> createState() => _DeadliftRomentoState();
}

class _DeadliftRomentoState extends State<DeadliftRomento> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;

  
  String assetVideoPath = "assets/exercicios/DEADLIFT.mp4";

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomVideoPlayer(
              customVideoPlayerController: _customVideoPlayerController),
          
        ],
      ),
    );
  }

  

  void initializeVideoPlayer(Source source) {
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {});
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}
