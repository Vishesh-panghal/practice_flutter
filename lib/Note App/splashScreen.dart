import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  String text = '';
  int currentIndex = 0;
  late AnimationController _controller;

  final String todoText = 'TODO';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _startTypingAnimation();
  }

  void _startTypingAnimation() {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (currentIndex < todoText.length) {
        setState(() {
          text += todoText[currentIndex];
          currentIndex++;
        });
        _startTypingAnimation();
      }
       homepageRoute();
    });
   
  }

  void homepageRoute() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const TODOHomepage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.amber.shade300,
        ),
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Text(
                text,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.lineThrough,
                  letterSpacing: 5,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
