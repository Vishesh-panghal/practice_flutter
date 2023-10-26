// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:authentication_pages/Music_app/music_list.dart';
import 'package:flutter/material.dart';

class MusicHomepageScreen extends StatefulWidget {
  const MusicHomepageScreen({super.key});

  @override
  State<MusicHomepageScreen> createState() => _MusicHomepageScreenState();
}

class _MusicHomepageScreenState extends State<MusicHomepageScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.grey.shade100,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1),
              Container(
                height: size.height * 0.4,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.network(
                  MusicData.musicImg[0],
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Take it Easy',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Karan Aujla',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: ProgressBar(
                  progress: Duration(seconds: 0),
                  total: Duration(seconds: 500),
                  thumbRadius: 0,
                  progressBarColor: Colors.black87,
                  barHeight: size.height * 0.009,
                  barCapShape: BarCapShape.round,
                  baseBarColor: Colors.grey.shade300,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.fast_rewind,
                    size: size.height * 0.06,
                  ),
                  Icon(
                    Icons.pause,
                    size: size.height * 0.06,
                  ),
                  Icon(
                    Icons.fast_forward,
                    size: size.height * 0.06,
                  )
                ],
              ),
              SizedBox(height: size.height * 0.07),
              Container(
                color: Colors.amber,
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Icon(Icons.volume_mute)),  
                    Expanded(
                      flex: 8,
                      child: ProgressBar(
                        baseBarColor: Colors.grey,
                        progressBarColor: Colors.black87,
                        timeLabelLocation: TimeLabelLocation.none,
                        progress: Duration(seconds: 0),
                        total: Duration(seconds: 100),
                        thumbRadius: 0,
                        barHeight: size.height * 0.015,
                      ),
                    ),
                    Expanded(child: Icon(Icons.volume_up)),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.red.shade300,
                    size: size.width * 0.06,
                  ),
                  Icon(
                    Icons.cast,
                    color: Colors.red.shade300,
                    size: size.width * 0.06,
                  ),
                  Icon(
                    Icons.list,
                    color: Colors.red.shade300,
                    size: size.width * 0.06,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
