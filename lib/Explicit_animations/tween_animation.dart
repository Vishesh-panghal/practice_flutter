// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TweenAnim extends StatefulWidget {
  const TweenAnim({super.key});

  @override
  State<TweenAnim> createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim> with TickerProviderStateMixin {
  late AnimationController mController;
  late AnimationController mSecondController;
  late Animation tweenAnim;
  late Animation tweenAnim2;
  late Animation tweenSize;
  late Animation tweenColor;

  @override
  void initState() {
    super.initState();
    // 1:- Declare the animation Controler---
    mController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    mSecondController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    // here we give Size or we can say that Length to travel to an animation.
    tweenAnim = Tween(begin: 200.0, end: 400.0).animate(mController);
    tweenAnim2 = Tween(begin: 180.0, end: 330.0).animate(mSecondController);
    // tweenSize = SizeTween(begin: 11,end: 22).animate(mController);
    tweenSize = Tween(begin: 11.0, end: 72.0).animate(mController);
    tweenColor = ColorTween(begin: Color(0xff2575fc), end: Color(0xff596164))
        .animate(mController);

    mController.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffe2d1c3),
            Color(0xff48c6ef),
          ], begin: FractionalOffset(0, 1.0), end: FractionalOffset(1, 0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: tweenAnim.value,
              height: tweenAnim.value,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(
                  tweenSize.value,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(34),
              decoration: BoxDecoration(
                color: tweenColor.value,
                borderRadius: BorderRadius.circular(
                  tweenSize.value,
                ),
              ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  //3 initilize controller..
                  if (mController.isAnimating) {
                    mController.stop();
                  } else {
                    mController.repeat(reverse: true);
                    // mController.forward();
                  }
                },
                child: Text('Start'))
          ],
        ),
      ),
    );
  }
}
