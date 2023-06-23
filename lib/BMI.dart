// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'dart:math';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  var check = false;
  var result = 0.0;
  var category = '';
  var weight = TextEditingController();
  var ftHeight = TextEditingController();
  var inchHeight = TextEditingController();
  var cmHeight = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'BMI Calculator',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '____________________________________',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          'Entre your weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        controller: weight,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'kg',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // ----------------- Weight END--------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Container(
                  // padding: EdgeInsets.all(5),
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     width: 1,
                  //     color: Colors.white,
                  //   ),
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  // child:
                  Column(
                    children: [
                      Text(
                        'Click If you want to entre',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'your height into centimeters',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  // ),
                  SizedBox(width: 70),
                  Container(
                    // padding: EdgeInsets.only(right: 50),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: check ? Colors.blue : Colors.white,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      // alignment: Alignment.center,
                      iconSize: 25,
                      onPressed: () {
                        setState(() {
                          check = !check;
                        });
                      },
                      icon: Icon(
                        Icons.check,
                        color: check ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          'Entre your Height',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: ftHeight,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabled: !check,
                          hintText: 'Feet',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: inchHeight,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabled: !check,
                          hintText: 'inch',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ----------------- Feet Height END--------------
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          'Entre your Height',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        controller: cmHeight,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabled: check,
                          hintText: 'cm',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              // ----------------- cm Height END--------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (check == false) {
                          var ftIntome = int.parse(ftHeight.text) / 3.281;
                          var inchIntome = int.parse(inchHeight.text) / 39.37;
                          var sum = ftIntome + inchIntome;
                          var result2 = int.parse(weight.text) / pow(sum, 2);
                          result = double.parse(result2.toStringAsFixed(2));
                          if (result > 25) {
                            category = 'Overweight';
                          } else if (result >= 18 && result <= 25) {
                            category = 'Normal';
                          } else if (result < 18) {
                            category = 'Underweight';
                          }
                        } else if (check == true) {
                          var sum = double.parse(cmHeight.text) / 100;
                          var result2 = int.parse(weight.text) / pow(sum, 2);
                          result = double.parse(result2.toStringAsFixed(2));
                          if (result > 25) {
                            category = 'Overweight';
                          } else if (result >= 18 && result <= 25) {
                            category = 'Normal';
                          } else if (result < 18) {
                            category = 'Underweight';
                          }
                        }
                      });
                    },
                    child: Text(
                      'Calculate',
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        check = false;
                        category = '';
                        weight.clear();
                        ftHeight.clear();
                        inchHeight.clear();
                        cmHeight.clear();
                      });
                    },
                    child: Text(
                      'Reset',
                    ),
                  ),
                ],
              ),
              // ------------------ Buttons----------------------
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'BMI',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$result',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$category',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}