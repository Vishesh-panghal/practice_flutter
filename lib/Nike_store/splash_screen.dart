// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'homePage_NikeStore.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with TickerProviderStateMixin {
  late AnimationController iconController;
  late AnimationController shoeController;
  late AnimationController nameController;
  late Animation<double> shoeAnimation;
  late Animation<double> nameAnimation;
  double aboutOpacty = 0.0;
  double translateX = 0.0;
  double translateY = 0.0;
  double myWidth = 0.0;

  @override
  void initState() {
    iconController = AnimationController(vsync: this);
    shoeController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    nameController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    shoeAnimation = Tween(begin: 0.6, end: 1.0).animate(shoeController);
    nameAnimation = Tween(begin: -1.0, end: 0.3).animate(nameController);
    shoeController.forward();
    nameController.forward();
    Timer(Duration(seconds: 3), () {
      aboutOpacty = 1.0;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    iconController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(169, 246, 212, 101),
              Color(0xffe2ebf0),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Lottie.asset(
                    'assets/lottie/ic_nike.json',
                    height: 50,
                    controller: iconController,
                    onLoaded: (p0) {
                      iconController.duration = p0.duration;
                      iconController.forward();
                    },
                  ),
                ],
              ),
            ),
            //-----------Nike Sign at Top {Lottie}--------------------//
            AnimatedBuilder(
              animation: shoeController.view,
              builder: (context, child) {
                return Transform.scale(
                  scale: shoeAnimation.value,
                  child: child,
                );
              },
              child: Image.asset('assets/Images/nike_store/splash_screen.png'),
            ),
            SizedBox(height: 20),
            //-----------------Shoe Scale Image-----------------------//
            AnimatedBuilder(
              animation: nameAnimation,
              builder: (context, child) {
                var x = nameAnimation.value * 100;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: child,
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Just do it with',
                    style: TextStyle(
                      fontFamily: 'Courgette',
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Nike',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            //----------------- Slogan {Nike}------------------------//
            SizedBox(height: 30),
            AnimatedOpacity(
              opacity: aboutOpacty,
              duration: Duration(seconds: 3),
              child: Text(
                'Get access to more than 1000 nike shoes\n also another brand with 20% off.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            //------------About Statment---------------------//
            SizedBox(height: 70),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: aboutOpacty,
              child: Container(
                width: 345,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(92, 174, 216, 239),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Transform.translate(
                      offset: Offset(translateX, translateY),
                      child: AnimatedContainer(
                        height: 70,
                        width: 90 + myWidth,
                        duration: Duration(
                          milliseconds: 600,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(61, 241, 191, 52),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: myWidth > 0.0
                            ? Icon(Icons.check, color: Colors.black, size: 38)
                            : Icon(
                                Icons.keyboard_arrow_right_sharp,
                                size: 38,
                              ),
                      ),
                    ),
                    myWidth == 0
                        ? Expanded(
                            child: Center(
                              child: Text(
                                'Swipe to start shopping..',
                                style: TextStyle(
                                  fontFamily: 'Courgette',
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// AnimatedOpacity(
//               duration: Duration(seconds: 3),
//               opacity: aboutOpacty,
//               child: InkWell(
//                 onTap: () {
//                   Navigator.pushReplacement(
//                       context,
//                       PageTransition(
//                           child: NikeHomePage(),
//                           type: PageTransitionType.fade,
//                           duration: Duration(milliseconds: 300),
//                           isIos: true));
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: 40,
//                   width: 150,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(colors: [
//                       Color(0xffe2ebf0),
//                       Color.fromARGB(169, 246, 212, 101),
//                     ]),
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Text(
//                     'Get Started',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             )