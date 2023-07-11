// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DarkBackground extends StatefulWidget {
  const DarkBackground({super.key});

  @override
  State<DarkBackground> createState() => _DarkBackgroundState();
}

class _DarkBackgroundState extends State<DarkBackground> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              
            },
            child: Text('Convert'),
          ),
        ],
      ),
    );
  }
}
