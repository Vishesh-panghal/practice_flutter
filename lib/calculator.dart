// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  var operand;
  var result = 0;

  // void _calculateResult(var operand, var result,var num1,var num2) {
  //   setState(() {
  //     if (operand == '+') {
  //       result = int.parse(num1.text) + int.parse(num2.text);
  //     } else if (operand == '-') {
  //       result = int.parse(num1.text) - int.parse(num2.text);
  //     } else if (operand == '*') {
  //       result = int.parse(num1.text.toString()) * int.parse(num2.text);
  //     } else if (num1 == 0) {
  //       if (operand == '/') {
  //         if (num2!=0) {
  //           double.parse(num1.text) / double.parse(num2.text);
  //         }else
  //         {
  //           result = 'Error';
  //         }
  //       }
  //     } else if (operand == '%') {
  //       result = int.parse(num1.text) % int.parse(num2.text);
  //     }
  //   });
  // }

  void _resetValues() {
    setState(() {
      num1.text = '';
      num2.text = '';
      operand = null;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Calculator',
                        style: TextStyle(
                          fontFamily: 'Courgette',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'First number: ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: TextField(
                              controller: num1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Second number: ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: TextField(
                              controller: num2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Operation: ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '$operand',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '___________________________________',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Result: ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '$result',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              // ------------------- Screen END------------------//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        elevation: 1,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        operand = '+';
                      },
                      child: Text(
                        '+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        elevation: 1,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        operand = '-';
                      },
                      child: Text(
                        '-',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        elevation: 1,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        operand = '*';
                      },
                      child: Text(
                        '*',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        elevation: 1,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        operand = '/';
                      },
                      child: Text(
                        '/',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        elevation: 1,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        operand = '%';
                      },
                      child: Text(
                        '%',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              // ------------------ Operation Button END----------------

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {
                  // _calculateResult(operand,result,num1,num2);
                  setState(() {
                    if (operand == '+') {
                      result = int.parse(num1.text) + int.parse(num2.text);
                    } else if (operand == '-') {
                      result = int.parse(num1.text) - int.parse(num2.text);
                    } else if (operand == '*') {
                      result = int.parse(num1.text) *
                          int.parse(num2.text);
                    } else if (num1 == 0) {
                      if (operand == '/') {
                        if (num2 != 0) {
                          double.parse(num1.text) / double.parse(num2.text);
                        } else {
                          result = 0;
                        }
                      }
                    } else if (operand == '%') {
                      result = int.parse(num1.text) % int.parse(num2.text);
                    }
                  });
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontFamily: 'Courgette',
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              // ------------------ Calculate Button END ------------------
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: _resetValues,
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontFamily: 'Courgette',
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              // -------------------- Reset Button END ----------------------
            ],
          ),
        ),
      ),
    );
  }
}
