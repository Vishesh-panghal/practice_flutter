// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class gridPage extends StatefulWidget {
  const gridPage({super.key});

  @override
  State<gridPage> createState() => _gridPageState();
}

class _gridPageState extends State<gridPage> with SingleTickerProviderStateMixin{
  late AnimationController ctrl;
   List imgAddress = [
    'assets/Images/shoes_img/shoe1.png',
    'assets/Images/shoes_img/shoe2.png',
    'assets/Images/shoes_img/shoe.png',
    'assets/Images/shoes_img/shoe3.png',
    'assets/Images/shoes_img/shoe5.png',
    'assets/Images/shoes_img/shoe6.png',
    'assets/Images/shoes_img/shoe7.png',
  ];
  List shoeSize = [
    'Uk 6',
    'Uk 6.5',
    'Uk 7',
    'Uk 7.5',
    'Uk 8.5',
    'Uk 8.5',
    'Uk 9',
    'Uk 9.5',
    'Uk 10',
    'Uk 10.5',
    'Uk 11',
    'Uk 11.5',
    'Uk 12',
    'Uk 12.5',
  ];

  @override
  void initState() {
    ctrl = AnimationController(vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:  Lottie.asset(
            'assets/lottie/ic_nike.json',
            controller: ctrl,
            onLoaded: (p0) {
              ctrl.duration = p0.duration;
              ctrl.forward();
              ctrl.addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  ctrl.stop();
                }
              });
            },
            height: 50,
          ),
      ),
    );
  }
}