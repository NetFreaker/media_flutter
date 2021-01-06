import 'package:flutter/material.dart';
import 'package:media/widgets/videoplay.dart';

class MediaScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    Future <void> showPopupVideo(){
      return  showDialog(
        context: context,
        child: AlertDialog(
          // height: 100,
          // width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10.0),
          //   color: Colors.white
          // ),
          contentPadding: EdgeInsets.all(12.0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ]
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          content: VideoPlayWidget('assets/video/samplev.mp4'),
        )
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Column(
            children: [
              Container(
                height: height / 6,
                width: width,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Video Name', 
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w400 
                          )),
                          SizedBox(
                            height: 4.0
                          ),
                          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry', style: TextStyle(
                            fontSize: 12.0
                          ))
                        ]
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        showPopupVideo();
                      },
                      child: Container(
                        width: width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/thumbnail.png')
                          )
                        ),
                      ),
                    )
                  ]
                ),
              ),
              Container(
                height: height / 1.4,
                width: width,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: VideoPlayWidget('assets/video/samplev.mp4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}