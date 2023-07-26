// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:authentication_pages/Nike_store/homePage_NikeStore.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xfff6d365),
          Color(0xffe2d1c3),
        ])),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'SneakerQuest',
                    style: TextStyle(
                        fontFamily: 'Courgette',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Container(
              height: 696,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17),
                  topRight: Radius.circular(17),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: .0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(185, 0, 0, 0),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            topRight: Radius.circular(17)),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 8.0),
                        margin: EdgeInsets.only(top: 12, bottom: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome!',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Good to see you back. . .',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 70),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile number:',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'phone',
                              hintStyle: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                          SizedBox(height: 50),
                          Text(
                            'Password:',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'password',
                              hintStyle: TextStyle(fontFamily: 'Poppins'),
                              suffixIcon: Icon(Icons.visibility_off),
                            ),
                            obscureText: true,
                            obscuringCharacter: '*',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Password!',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),SizedBox(height: 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xfff6d365),
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return NikeHomePage();
                          },));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Text('Or',style: TextStyle(fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Image.asset(''),
                            Image.asset(''),
                            Image.asset(''),
                          ],
                        )
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
