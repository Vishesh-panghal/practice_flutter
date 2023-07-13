// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class ShoeAnimarionPage extends StatefulWidget {
  const ShoeAnimarionPage({super.key});

  @override
  State<ShoeAnimarionPage> createState() => _ShoeAnimarionPageState();
}

class _ShoeAnimarionPageState extends State<ShoeAnimarionPage> {
  List imgAddress = [
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/6b4aa283-cab2-45f7-923f-4757eb4d082c/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/8d860e77-4e10-4a45-bcd8-d838b6bd75c1/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/500a2983-12cc-494d-af40-d92c88fd9b70/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/647fe857-cc2d-417f-9534-0b8bd0aad666/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/42982f7a-6512-49f5-ac66-b69808dc267f/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ebebf937-2bb0-4b8c-b86c-579a6b1df638/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/eac56d5e-3156-4890-a251-8e3baa0f7103/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/15311e7b-9f85-4421-a665-626533bca5ac/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f99540fc-1a41-4de6-9f20-c840fe373fff/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/54b07c36-cd3a-41af-8206-9dc126a4ef8b/air-max-90-g-nrg-golf-shoes-3ftFxG.png',
  ];
  double opcty = 0.0;

  @override
  void initState() {
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
              child: Container(
                height: 300,
                width: 450,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff868f96),
                    Color(0xff596164),
                  ]),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 109, 107, 107),
                      blurRadius: 12,
                      offset: Offset(1, -1),
                    ),
                  ],
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imgAddress.length,
                  itemBuilder: (context, index) {
                    return Image.network('$imgAddress[index]');
                    // return SizedBox(
                    //   height: 600,
                    //   width: 450,
                    //   child: Image.asset(
                    //     'assets/Images/shoe.png',
                    //     height: 600,
                    //   ),
                    // );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            // ------------ Image List End-----------------//
            Padding(
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
            SizedBox(height: 20),
            // ------------------- Name & Price End-------------//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "The icon you know and love makes its way to the golf course to blend style with performance. It brings back mainstays like the Max Air cushioning and moulded elements. We updated the Waffle outsole to give you grip for the course, and a thin overlay helps keep water out. With purplish and orange hues spread throughout, this version has hints of the Grand Canyon state's glowing spring skies.\n\nColour Shown: White/Phantom/Iron Grey/Citron Tint\nStyle: FB5038-160",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: 50),
            // --------------- About End-------------------//
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                'Buy now',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                
              ),
              onPressed: () {},
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
                      Icons.favorite_border,
                      color: Colors.white,
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
