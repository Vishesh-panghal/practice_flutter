// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

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
  double opcty = 0.0;
  bool isClick = false;
  bool isFav = false;
  late AnimationController buybtnController;
  @override
  void initState() {
    buybtnController =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              isClick = false;
              setState(() {});
            }
          });

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
      appBar: AppBar(
        backgroundColor: Color(0xffc43a30),
        bottomOpacity: 0.0,
        elevation: 0,
      ),
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
            AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: opcty,
                child: Stack(
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
                    Container(
                      height: 300,
                      width: 500,
                      // color: Colors.amber,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imgAddress.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            '${imgAddress[index]}',
                            height: 700,
                            width: 400,
                          );
                        },
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 20),
            // ------------ Image List End-----------------//
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
            // ------------------- Name & Price End-------------//
            AnimatedOpacity(
              opacity: opcty,
              duration: Duration(seconds: 1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "The icon you know and love makes its way to the golf course to blend style with performance. It brings back mainstays like the Max Air cushioning and moulded elements. We updated the Waffle outsole to give you grip for the course, and a thin overlay helps keep water out. With purplish and orange hues spread throughout, this version has hints of the Grand Canyon state's glowing spring skies.\n\nColour Shown: White/Phantom/Iron Grey/Citron Tint\nStyle: FB5038-160",
                  style: TextStyle(
                    color: Colors.white,
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
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {},
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
                      controller: buybtnController,
                      onLoaded: (p0) {
                        buybtnController.forward();
                      },
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        isClick = true;
                        isFav = true;
                        setState(() {});
                      },
                      child: SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              color: isFav ? Colors.red : Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
