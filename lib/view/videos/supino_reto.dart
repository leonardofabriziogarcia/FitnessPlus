import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

enum Source { Asset, Network }

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;

  Uri videoUri = Uri.parse(
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
  String assetVideoPath = "assets/exercicios/Supino_Reto_com_Halteres.mp4";

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
          _sourceButtons(),
        ],
      ),
    );
  }

  Widget _sourceButtons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MaterialButton(
          color: Colors.red,
          child: const Text(
            "Network",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            setState(() {
              currentSource = Source.Network;
              initializeVideoPlayer(currentSource);
            });
          },
        ),
        MaterialButton(
          color: Colors.red,
          child: const Text(
            "Asset",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            setState(() {
              currentSource = Source.Asset;
              initializeVideoPlayer(currentSource);
            });
          },
        ),
      ],
    );
  }

  void initializeVideoPlayer(Source source) {
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {});
        });
    } else if (source == Source.Network){
      _videoPlayerController = VideoPlayerController.networkUrl(videoUri)..initialize().then((value){
        setState(() {});
      });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}
