// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class IconAnimated extends StatefulWidget {
  const IconAnimated({super.key});

  @override
  State<IconAnimated> createState() => _IconAnimatedState();
}

class _IconAnimatedState extends State<IconAnimated> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this,duration:  Duration(seconds: 2));
    controller.forward();
    setState(() {
      
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffd299c2),
              Color(0xffc3cfe2),
            ],
            begin: FractionalOffset(1, 0),
            end: FractionalOffset(1, 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text('Animated Icon',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 32),),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                if (controller.forward() == true) {
                  controller.forward();
                }else{
                  controller.reverse();
                }
                setState(() {
                  
                });
              },
              child: AnimatedIcon(icon: AnimatedIcons.play_pause, 
              size: 70,
              progress: controller),
            )
          ],
        ),
      ),
    );
  }
}
