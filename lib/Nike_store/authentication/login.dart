// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, use_build_context_synchronously,use_key_in_widget_constructors, must_be_immutable

import 'package:authentication_pages/Nike_store/homePage_NikeStore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import '../splash_screen.dart';

class LoginPage extends StatefulWidget {
  var getCount = 0;
  Color? colorm;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var isObsure = true;

  var mailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void initState() {
    setCount();
    super.initState();
  }

  void setCount() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    widget.getCount = (pref.getInt("Counter") ?? 0) + 1;
    pref.setInt("Counter", widget.getCount);
    setState(() {
      widget.colorm =
          (widget.getCount % 5 == 0) ? Colors.greenAccent : Colors.black;
    });
  }

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
                        // color: Color.fromARGB(185, 0, 0, 0),
                        color: widget.colorm,
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
                              'Welcome',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Good to see you back',
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
                            'Email:',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          TextFormField(
                            controller: mailController,
                            decoration: InputDecoration(
                              hintText: 'email',
                              hintStyle: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                          SizedBox(height: 50),
                          Text(
                            'Password:',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: isObsure,
                            obscuringCharacter: '*',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password can't be empty!";
                              } else if (value.length > 6) {
                                return "Password can't be less than 6";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'password',
                              hintStyle: TextStyle(fontFamily: 'Poppins'),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  isObsure = !isObsure;
                                  setState(() {});
                                },
                                icon: isObsure
                                    ? Icon(Icons.visibility_off)
                                    : Icon(
                                        Icons.visibility,
                                        color: Colors.blue,
                                      ),
                              ),
                            ),
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
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfff6d365),
                        alignment: Alignment.center,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () async {
                        var pref = await SharedPreferences.getInstance();
                        pref.setBool(SplashScreenPage.KEYLOGIN, true);
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return NikeHomePage();
                          },
                        ));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                    Text(
                      'SignUp',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                        'You visited this page ${widget.getCount} ${widget.getCount == 1 ? 'time' : 'times'}.'),
                    TextButton(
                        onPressed: () {
                          widget.getCount = 0;
                          setState(() {});
                        },
                        child: Text('Reset count')),
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
