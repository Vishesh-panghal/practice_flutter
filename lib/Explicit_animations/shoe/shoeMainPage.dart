// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'shoe.dart';

class AnimateImagePage extends StatefulWidget {
  const AnimateImagePage({super.key});

  @override
  State<AnimateImagePage> createState() => _AnimateImagePageState();
}

class _AnimateImagePageState extends State<AnimateImagePage>
    with TickerProviderStateMixin {
  late AnimationController shoeAnimationController;
  


  @override
  void initState() {
    super.initState();
    shoeAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);
  }
 @override
  void dispose() {
    shoeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color(0xfffbc2eb),
            Color(0xff8fd3f4),
          ],
          radius: 1.5,
          center: Alignment.bottomCenter,
          tileMode: TileMode.repeated,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: ShoeAnimarionPage(),
                      type: PageTransitionType.bottomToTop,
                      isIos: true));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-1, -1),
                    blurRadius: 18,
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    Color(0xff96e6a1),
                    Color(0xffd4fc79),
                  ],
                ),
              ),
              width: 200,
              height: 200,
            ),
          ),
          AnimatedBuilder(
            animation: shoeAnimationController.view,
            builder: (context, child) => Transform.translate(
              offset: Offset(shoeAnimationController.value,
                  shoeAnimationController.value * -40.0),
              child: Transform.rotate(
                angle: -12,
                child: child,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: ShoeAnimarionPage(),
                      type: PageTransitionType.fade,
                      isIos: true,
                    ),
                  );
                },
                child: Image.asset(
                  'assets/Images/shoes_img/shoe.png',
                  width: 230,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
