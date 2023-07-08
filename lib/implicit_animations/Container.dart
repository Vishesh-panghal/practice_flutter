// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class AnimateContainer extends StatefulWidget {
  const AnimateContainer({super.key});

  @override
  State<AnimateContainer> createState() => _AnimateContainerState();
}

class _AnimateContainerState extends State<AnimateContainer> {
  var mHeight = 200.0;
  var mWidth = 400.0;
  Color mColor = Colors.grey;

  // @override
  // void initState() {
  //    super.initState();
  //   Timer(Duration(milliseconds: 3000), () {
  //     mHeight = 400.0;
  //     mWidth = 200.0;
  //     mColor = Colors.yellowAccent;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffa8edea),
              Color(0xfffed6e3),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Animated Container',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(height: 50),
              AnimatedContainer(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: mColor,
                  border: Border.all(width: 0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: mHeight,
                width: mWidth,
                duration: Duration(seconds: 3),
                child: Text('Container is changing its Size',style: TextStyle(fontSize: 22,color: Colors.black),),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    if (mHeight == 200) {
                      mHeight = 400.0;
                      mWidth = 200.0;
                      mColor = Colors.yellowAccent;
                    } else {
                      mHeight = 200.0;
                      mWidth = 400.0;
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
