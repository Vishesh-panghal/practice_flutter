// ignore_for_file: prefer_const_constructors

import 'package:authentication_pages/auth/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isVisiblity = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController phnController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .7,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10, 11),
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 50,
                  )
                ]),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: size.height * .05),
                    Text(
                      'Sneaker Quest',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 7,
                        wordSpacing: 3,
                      ),
                    ),
                    SizedBox(height: size.height * .05),
                    Text(
                      'Signup'.toUpperCase(),
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decorationColor: Colors.black,
                        letterSpacing: 5,
                      ),
                    ),
                    SizedBox(height: size.height * .03),
                    //-------------Login container----------------------//
                    Container(
                      height: size.height * .63,
                      margin: EdgeInsets.symmetric(
                        horizontal: size.height * .02,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(139, 248, 248, 248),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.height * .02,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: size.height * .04),
                            Row(
                              children: [
                                Expanded(
                                    child: TextFormField(
                                      controller: firstNameController,
                                  decoration: InputDecoration(
                                      label: Text(
                                    'First name',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                    ),
                                  )),
                                )),
                                SizedBox(width: size.height * .01),
                                Expanded(
                                    child: TextFormField(
                                      controller: lastNameController,
                                  decoration: InputDecoration(
                                      label: Text(
                                    'Last name',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                    ),
                                  )),
                                )),
                              ],
                            ),
                            SizedBox(height: size.height * .04),
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                label: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * .04),
                            TextFormField(
                              controller: phnController,
                              decoration: InputDecoration(
                                label: Text(
                                  'Phone',
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * .04),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: passController,
                                    obscureText: isVisiblity,
                                    obscuringCharacter: '*',
                                    decoration: InputDecoration(
                                      label: Text(
                                        'Password',
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: size.height * .01),
                                Expanded(
                                  child: TextFormField(
                                    controller: confirmPassController,
                                    obscureText: isVisiblity,
                                    obscuringCharacter: '*',
                                    decoration: InputDecoration(
                                      label: Text(
                                        'Confirm Password',
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * .06),
                            SizedBox(
                              width: size.width * .7,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text('Register',style: TextStyle(fontFamily: 'Poppins',),),
                              ),
                            ),
                            SizedBox(height: size.height * .03),
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.blue.shade600,
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
            ),
          )
        ],
      ),
    );
  }
}
