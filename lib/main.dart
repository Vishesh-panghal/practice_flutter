// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, non_constant_identifier_names, use_key_in_widget_constructors, unused_import

import 'package:authentication_pages/Exercise/BMI.dart';
import 'package:authentication_pages/Exercise/contacts.dart';
import 'package:flutter/material.dart';
import 'Exercise/rivePage.dart';
import 'Explicit_animations/shoe/buyPage.dart';
import 'Explicit_animations/shoe/shoe.dart';
import 'Explicit_animations/shoe/shoeMainPage.dart';
import 'Explicit_animations/tween_animation.dart';
import 'Nike_store/authentication/login.dart';
import 'Nike_store/homePage_NikeStore.dart';
import 'Nike_store/splash_screen.dart';
import 'implicit_animations/Container.dart';
import 'implicit_animations/Crossfade.dart';
import 'implicit_animations/dark_light.dart';
import 'implicit_animations/file.dart';
import 'implicit_animations/opacity.dart';
import 'Exercise/signup.dart';
import 'Exercise/tip_calcuator.dart';
import 'Exercise/calculator.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var Email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Login Page',
          style: TextStyle(fontFamily: 'Courgette'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                fontFamily: 'Courgette',
                fontSize: 28,
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.only(left: 52, right: 23, top: 12),
              child: TextField(
                controller: Email,
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(fontFamily: 'Poppins'),
                    suffixText: '@gmail.com',
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    )),
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.only(left: 52, right: 23, top: 12),
              child: TextField(
                controller: password,
                obscuringCharacter: '*',
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontFamily: 'Poppins'),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.deepPurple,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue.shade700),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                print(Email.text.toString());
                print(password.text.toString());
              },
              child: Text('Login'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'OR',
                style: TextStyle(fontFamily: 'Courgette', fontSize: 22),
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.only(top: 12.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Padding(padding: EdgeInsets.only(left: 22)),
            //       Image.asset(
            //         'assets/Images/ic_facebook.png',
            //         height: 30,
            //       ),
            //       Padding(padding: EdgeInsets.only(left: 12)),
            //       Image.asset(
            //         'assets/Images/ic_google.png',
            //         height: 30,
            //       ),
            //       Padding(padding: EdgeInsets.only(left: 12)),
            //       Image.asset('assets/Images/ic_apple.png'),
            //       Padding(padding: EdgeInsets.only(left: 12)),
            //     ],
            //   ),
            // ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Sign up!',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            // SizedBox(height: 200),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'Made with ❤️',
            //       style: TextStyle(
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.w200
            //       ),
            //     ),
            //     Text(
            //       'Vishesh Panghal',
            //       style: TextStyle(
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.w600
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}