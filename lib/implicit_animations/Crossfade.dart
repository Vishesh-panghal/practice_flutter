// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AnimateCrossFade extends StatefulWidget {
  const AnimateCrossFade({super.key});

  @override
  State<AnimateCrossFade> createState() => _AnimateCrossFadeState();
}

class _AnimateCrossFadeState extends State<AnimateCrossFade> {
  var state = CrossFadeState.showFirst;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffd4fc79),
          Color(0xff96e6a1),
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Animated CrossFade',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(height: 50),
              AnimatedCrossFade(
                firstChild: Container(
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                secondChild: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                crossFadeState: state,
                duration: Duration(seconds: 2),
                firstCurve: Curves.easeInToLinear,
                secondCurve: Curves.easeInToLinear,
                sizeCurve: Curves.bounceInOut,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    if (state == CrossFadeState.showFirst) {
                      state = CrossFadeState.showSecond;
                    }else{
                      state = CrossFadeState.showFirst;
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
