import 'package:authentication_pages/BLoc_Exercide/InternetConnectivity/BLoc/bloc/bloc_is_connected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BLoc_Exercide/InternetConnectivity/screens/netConn.dart';
import 'Nike_store/authentication/login.dart';

void main() {
  runApp(const MyNikeApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  BlocProvider(
//       create: (context) => InternetBloc(),
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: IsConnectPage(),
//       ),
//     );
//   }
// }

// Nike app
class MyNikeApp extends StatelessWidget {
  const MyNikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
