// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';

class contacts extends StatefulWidget {
  const contacts({Key? key}) : super(key: key);

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  List<Map<String, dynamic>> contacts = [
    {'name': 'Alex', 'status': 'Brother', 'isFav': false},
    {'name': 'Jerry', 'status': 'Friend', 'isFav': false},
    {'name': 'Rahul', 'status': 'Friend', 'isFav': false},
    {'name': 'Hemant', 'status': 'Friend', 'isFav': false},
    {'name': 'Maa', 'status': 'Mother', 'isFav': false},
    {'name': 'Papa', 'status': 'Father', 'isFav': false},
    {'name': 'Alice', 'status': 'Friend', 'isFav': false},
    {'name': 'HDFC', 'status': 'Account number', 'isFav': false},
    {'name': 'Mukesh', 'status': 'Friend', 'isFav': false},
    {'name': '#Crush', 'status': 'Crush', 'isFav': false},
    {'name': 'Alice', 'status': 'Friend', 'isFav': false},
    {'name': 'HDFC', 'status': 'Account number', 'isFav': false},
    {'name': 'Mukesh', 'status': 'Friend', 'isFav': false},
    {'name': '#Crush', 'status': 'Crush', 'isFav': false},
  ].toList();

  Color clr = Colors.blue.shade200;
  @override
  void initState() {
    Timer(Duration(milliseconds: 5000), () {
      clr = Colors.orange.shade300;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              'Contacts',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 32,
                color: clr,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: .2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      blurStyle: BlurStyle.outer,
                      color: Colors.grey,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: clr,
                        border: Border.all(
                          width: 0.3,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(37),
                      ),
                      child: Image.asset(
                        'assets/Images/memoji.PNG',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vishesh Panghal',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: clr,
                          ),
                        ),
                        Text(
                          'My Card',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: clr,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 100),
                    Container(
                      alignment: Alignment.center,
                      width: 45,
                      height: 50,
                      decoration: BoxDecoration(
                        color: clr,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: IconButton(
                        iconSize: 25,
                        onPressed: () {
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 690,
              child: ListView.builder(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300 + (index + 100)),
                    curve: Curves.easeInOut,
                    margin: EdgeInsets.only(left: 6, right: 0, bottom: 6),
                    height: 50,
                    decoration: BoxDecoration(
                      color: clr,
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(37),
                          ),
                          child: Image.asset(
                            'assets/Images/memoji.PNG',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${contacts[index]['name']}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${contacts[index]['status']}',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 70),
                        IconButton(
                          iconSize: 30,
                          onPressed: () {
                            setState(() {
                              contacts[index]['isFav'] =
                                  !contacts[index]['isFav'];
                            });
                          },
                          icon: Icon(
                            Icons.star,
                            color: contacts[index]['isFav']
                                ? Colors.yellow
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
