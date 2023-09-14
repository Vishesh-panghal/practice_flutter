// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BLoc_Exercide/InternetConnectivity/BLoc/bloc/bloc_is_connected.dart';
import 'TODO App/homepage.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'TODO App/splashScreen.dart';
import 'auth/login_page.dart';

// void main() {
//   runApp(const MyNikeApp());
// }
void main() async {
  // initlize Hive:-
  await Hive.initFlutter();
  var box = await Hive.openBox('TodoBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child:  MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber,
          primaryColor: Colors.amber,
        ),
        debugShowCheckedModeBanner: false,
        home:const SplashScreenPage(),
      ),
    );
  }
}

// Nike app
// class MyNikeApp extends StatelessWidget {
//   const MyNikeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.amber,
//         primaryColor: Colors.amber,
//       ),
//       debugShowCheckedModeBanner: false,
//       home:const TODOHomepage(),
//     );
//   }
// }
