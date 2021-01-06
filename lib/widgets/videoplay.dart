import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayWidget extends StatefulWidget {

  final String videoPath;
  VideoPlayWidget(this.videoPath);

  @override
  _VideoPlayWidgetState createState() => _VideoPlayWidgetState();
}

class _VideoPlayWidgetState extends State<VideoPlayWidget> {

  VideoPlayerController videoPlayerController;

  @override
  void initState(){
    videoPlayerController = VideoPlayerController.asset(
      widget.videoPath
    )..initialize().then((_){
       setState((){
         videoPlayerController.play();
         videoPlayerController.setLooping(true);
       });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: videoPlayerController.value.aspectRatio,
      child: VideoPlayer(
        videoPlayerController
      ),
    );
  }

  @override
  void dispose(){
    videoPlayerController.dispose();
    super.dispose();
  }
}