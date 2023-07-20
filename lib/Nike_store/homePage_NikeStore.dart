// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NikeHomePage extends StatefulWidget {
  const NikeHomePage({super.key});

  @override
  State<NikeHomePage> createState() => _NikeHomePageState();
}

class _NikeHomePageState extends State<NikeHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController signCtrlr;

  @override
  void initState() {
    signCtrlr = AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Lottie.asset(
          'assets/lottie/ic_nike.json',
          height: 50,
          controller: signCtrlr,
          onLoaded: (p0) {
            signCtrlr.duration = p0.duration;
            signCtrlr.forward();
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(color: Colors.grey.shade100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(66, 0, 0, 0),
                        blurRadius: 12,
                        // offset: Offset(dx, dy)
                      ),
                    ],
                  ),
                  child: Icon(Icons.dehaze),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(17, 0, 0, 0),
                        blurRadius: 12,
                        // offset: Offset(dx, dy)
                      ),
                    ],
                  ),
                  child: Image.asset('assets/Images/memoji.PNG'),
                ),
              ],
            ),
            SizedBox(height: 20),
            //------------------ Menu & Profile-----------------------//
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12)),
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 212, 101),
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.elliptical(8, 12),
                          right: Radius.elliptical(8, 12))),
                  child: Icon(
                    Icons.sort,
                    size: 40,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            //---------------------Search Bar-------------------------//
            SizedBox(
              height: 150,
              width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/Images/nike_store/quote.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),SizedBox(height: 40),
            //------------------Quote Container-----------------------//
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_left,color: Colors.grey,size: 38,),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(color: Colors.amber,
                  borderRadius: BorderRadius.circular(8)),
                  child: Image.asset('assets/Images/nike_store/jordan_sign.png'),
                ),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(color: Colors.amber,
                  borderRadius: BorderRadius.circular(8)),
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(color: Colors.amber,
                  borderRadius: BorderRadius.circular(8)),
                ),
                Icon(Icons.arrow_right,color: Colors.grey,size: 38,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
