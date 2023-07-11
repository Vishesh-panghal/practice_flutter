// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:authentication_pages/implicit_animations/hero_animation.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'Container.dart';
import 'Crossfade.dart';
import 'icon_animation.dart';
import 'opacity.dart';

class Implicit_Animations extends StatelessWidget {
  const Implicit_Animations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff48c6ef),
            Color(0xffe2d1c3),
          ], begin: FractionalOffset(1.0, 0), end: FractionalOffset(0, 1)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'img',
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HeroAnimation(),));
                    },
                    child: Image.asset(
                                  'assets/Images/coludy.png',
                                  height: 120,
                                ),
                  )),
              SizedBox(height: 30),
              Text(
                'Implicite Animation',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow.shade900),
              ),

              //----------------------Buttons----------------//
              SizedBox(height: 50),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimateContainer(),
                      ));
                },
                child: Text(
                  'Animated Container',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () {
                  Navigator.push(
                      context,
                      // MaterialPageRoute(
                      //   builder: (context) => Animateopacity(),
                      // )
                      PageTransition(child: Animateopacity(), type: PageTransitionType.fade)
                      );
                },
                child: Text(
                  'Animated Opacit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimateCrossFade(),
                      ));
                },
                child: Text(
                  'Animated Cross Fade',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IconAnimated(),));
                },
                child: Text(
                  'Animated Icon',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
