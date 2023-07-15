// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously

import 'dart:async';
import 'package:authentication_pages/Explicit_animations/shoe/buyPage.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ShoeAnimarionPage extends StatefulWidget {
  const ShoeAnimarionPage({super.key});

  @override
  State<ShoeAnimarionPage> createState() => _ShoeAnimarionPageState();
}

class _ShoeAnimarionPageState extends State<ShoeAnimarionPage>
    with TickerProviderStateMixin {
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
  double opcty = 0.0;
  bool isClick = false;
  bool isFav = false;
  bool isBuy = false;
  late AnimationController favbtnController;
  late AnimationController buybtnController;
  @override
  void initState() {
    favbtnController = AnimationController(vsync: this);
    buybtnController = AnimationController(vsync: this);

    Timer(Duration(milliseconds: 100), () {
      setState(() {
        opcty = 1.0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff243949),
              Color.fromARGB(255, 228, 42, 29),
            ],
            begin: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 450,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff868f96),
                      Color(0xff596164),
                    ]),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 12,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imgAddress.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          SizedBox(width: 10),
                          Image.asset(
                            '${imgAddress[index]}',
                          ),
                          SizedBox(width: 50),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            // ------------ Image List End-----------------//
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: shoeSize.length,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 100,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 2,
                        childAspectRatio: 4 / 2,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            border: Border.all(width: 0.3),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '${shoeSize[index]}',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                    AnimatedOpacity(
                      opacity: opcty,
                      duration: Duration(seconds: 1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nike Air Max 90 G NRG',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              'MRP : ₹  13 995.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // ----------------- Name & Price End----------//
                    AnimatedOpacity(
                      opacity: opcty,
                      duration: Duration(seconds: 1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          "The icon you know and love makes its way to the golf course to blend style with performance. It brings back mainstays like the Max Air cushioning and moulded elements. We updated the Waffle outsole to give you grip for the course, and a thin overlay helps keep water out. With purplish and orange hues spread throughout, this version has hints of the Grand Canyon state's glowing spring skies.\n\nColour Shown: White/Phantom/Iron Grey/Citron Tint\nStyle: FB5038-160",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    // --------------- About End-------------------//
                    AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity: opcty,
                        child: isBuy
                            ? LottieBuilder.asset('assets/lottie/ic_shipp.json',
                                onLoaded: (con) {
                                buybtnController.duration = con.duration;
                                buybtnController.forward();
                              }, height: 70)
                            : ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                                onPressed: () async {
                                  await Future.delayed(Duration(seconds: 3));
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: buyPage(),
                                      type: PageTransitionType.fade,
                                      isIos: true,
                                    ),
                                  );
                                  isBuy = true;
                                  setState(() {});
                                },
                                child: Text(
                                  'Buy now',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))),
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: opcty,
                      child: isClick
                          ? LottieBuilder.asset(
                              'assets/lottie/ic_done.json',
                              height: 100,
                              controller: favbtnController,
                              onLoaded: (comp) {
                                favbtnController.duration = comp.duration;
                                favbtnController.reset();
                                favbtnController.forward();
                                favbtnController.addStatusListener((status) {
                                  if (status == AnimationStatus.completed) {
                                    isClick = false;
                                    setState(() {});
                                  }
                                });
                              },
                            )
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              onPressed: () {
                                isClick = !isClick;
                                isFav = !isFav;
                                setState(() {});
                              },
                              child: SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Favourite',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite_rounded,
                                      color: isFav
                                          ? Colors.red.shade800
                                          : Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
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
