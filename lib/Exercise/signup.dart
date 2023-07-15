// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Signup',
          style: TextStyle(
            fontFamily: 'Courgette',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 198, 178, 231),
      ),
      body: Column(
        children: [
          // SizedBox(height: 150),
          // const Text(
          //   'Instagram',
          //   style: TextStyle(
          //     fontFamily: 'Courgette',
          //     fontSize: 28,
          //   ),
          // ),
          Image.asset(
            'assets/Images/signup.png',
            height: 250,
            width: 800,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.email,color: Colors.deepPurple),
                labelText: 'Email Or Phone',
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                    icon: Icon(Icons.account_circle_outlined,color: Colors.deepPurple),
                      labelText: 'First Name',
                      labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding:  EdgeInsets.only(left: 18.0, right: 18.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.password,color: Colors.deepPurple,),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0,top: 12),
            child: Row(
              children: [
                Checkbox(value: check1, onChanged: (bool? value){
                  check1 = value;
                }),
                Text('Terms and conditions')
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 178, 180, 231),
            ),
            onPressed: () {},
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.blue.shade700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
