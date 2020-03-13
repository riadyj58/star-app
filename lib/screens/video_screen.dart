import 'package:flutter/material.dart';
import 'package:star_app/widgets/video_widget.dart';

class VideoScreen extends StatelessWidget {
//  final AdventDoor door;
//
//  const SelectedDoorPage({
//    @required this.door,
//    Key key,
//  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: VideoWidget(
                  image: 'assets/images/1.jpg',
                  video:
                      'https://media.21cineplex.com/webcontent/movie/trailer/video/158331557959405.mp4',
                ),
              ),
            ),
          ],
        ),
      );
}
