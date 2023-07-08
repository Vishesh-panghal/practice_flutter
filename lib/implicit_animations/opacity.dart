// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Animateopacity extends StatefulWidget {
  const Animateopacity({super.key});

  @override
  State<Animateopacity> createState() => _AnimateopacityState();
}

class _AnimateopacityState extends State<Animateopacity> {
  var mopacity = 0.5;
  Color mColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfffad0c4),
              Color(0xffffd1ff),
            ],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(0, 1),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Animated Opacity',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Poppins'),
              ),SizedBox(height: 50),
              AnimatedOpacity(
                opacity: mopacity,
                duration: Duration(seconds: 8),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                  color: mColor,
                  border: Border.all(width: 0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                ),
              ),SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    if (mColor == Colors.grey) {
                      mopacity = 0.8;
                      mColor = Colors.greenAccent;
                    }else{
                      mopacity = 0.5;
                      mColor = Colors.grey;
                    }
                    setState(() {});
                  },
                  child: Text('Change Text')),
            ],
          ),
        ),
      ),
    );
  }
}
