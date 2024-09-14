import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyShopVideo extends StatefulWidget {

  @override
  _MyShopVideoState createState() => _MyShopVideoState();
}

class _MyShopVideoState extends State<MyShopVideo> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse("https://mazwai.com/videvo_files/video/free/2015-11/small_watermarked/9th-may_preview.webm"),
        ));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlickVideoPlayer(
          flickManager: flickManager
      ),
    );
  }
}