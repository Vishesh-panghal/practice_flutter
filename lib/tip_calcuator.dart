// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class tip_Calculator extends StatefulWidget {
  @override
  State<tip_Calculator> createState() => _tip_CalculatorState();
}

class _tip_CalculatorState extends State<tip_Calculator> {
  var perBill = 0.0;
  var count = 1;
  var bill = 000;
  var tip = 000;
  var EnterBill = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        // backgroundColor: Colors.amber,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                // alignment: Alignment.center,
                child: Image.asset('assets/Images/tip_logo.png'),
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 32,
                        color: Color.fromARGB(255, 121, 118, 118),
                        offset: Offset(-12, 11),
                      )
                    ]),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Total p/person',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '\$$perBill',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        // decoration: TextDecoration.underline,
                        decorationThickness: 2.0,
                      ),
                    ),
                    Text(
                      '________________________________________',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Total bill',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '\$$bill',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Total tip',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '\$$tip',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              //  ------------Card END:-----------
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Your bill',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: .4,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '\$',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: EnterBill,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              //  ------------Bill Entre END:-----------
              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Choose',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'your Tip',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  tip = (0.1 * double.parse(EnterBill.text))
                                      .toInt();
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.cyan,
                                ),
                                child: Text(
                                  '10%',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 6),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  tip =
                                      (15 / 100 * double.parse(EnterBill.text))
                                          .toInt();
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.cyan,
                                ),
                                child: Text(
                                  '15%',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 6),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  tip =
                                      (20 / 100 * double.parse(EnterBill.text))
                                          .toInt();
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.cyan,
                                ),
                                child: Text(
                                  '20%',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Container(
                          height: 50,
                          width: 180,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.cyan,
                          ),
                          child: Text(
                            'Custom tip',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              // -------------- Tip END---------------
              Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Split',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('the total')
                      ],
                    ),
                    SizedBox(width: 130),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (count < 1) {
                            count = 1;
                          } else if (count > 1) {
                            count--;
                          }
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(width: .2, color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(12, 12),
                            bottomLeft: Radius.elliptical(12, 12),
                          ),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(width: .2, color: Colors.black),
                          bottom: BorderSide(width: .2, color: Colors.black),
                        ),
                      ),
                      child: Text(
                        '$count',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(width: .2, color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.elliptical(12, 12),
                            bottomRight: Radius.elliptical(12, 12),
                          ),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                    onPressed: () {
                      setState(() {
                        if (EnterBill.text.isEmpty ||
                            double.tryParse(EnterBill.text) == null ||
                            double.parse(EnterBill.text) == 0) {
                          perBill = 0;
                          bill = 0;
                          tip = 0;
                          count = 1;
                        } else {
                          double billAmount = double.parse(EnterBill.text);
                          var totalBill = billAmount + tip;
                          var perPersonBill = totalBill / count;

                          if (perPersonBill.isFinite) {
                            bill = billAmount.toInt();
                            perBill = perPersonBill;
                          } else {
                            perBill = 0;
                            bill = 0;
                            tip = 0;
                            count = 1;
                          }
                        }
                      });
                    },
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                    onPressed: () {
                      setState(() {
                        perBill = 0;
                        tip = 0;
                        bill = 0;
                        EnterBill.clear();
                        count = 0;
                      });
                    },
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
