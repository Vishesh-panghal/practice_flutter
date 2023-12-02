// ignore_for_file: unused_import

import 'package:authentication_pages/API_%20practice/quote_api/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'API_ practice/post_modal/screen/homepage.dart';
import 'BLoc_Exercide/InternetConnectivity/BLoc/bloc/bloc_is_connected.dart';
import 'Music_app/music_homepage.dart';
import 'TODO App/homepage.dart';

import 'TODO App/splashScreen.dart';
import 'auth/login_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           primaryColor: Colors.purpleAccent, primarySwatch: Colors.purple),
//       debugShowCheckedModeBanner: false,
//       home:  PostScreen(),
//     );
//   }
// }

// TODO App:- 🔻
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home:const  SplashScreenPage(),
    );
  }
}
