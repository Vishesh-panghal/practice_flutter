// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class WhatsSend extends StatefulWidget {
  const WhatsSend({Key? key}) : super(key: key);

  @override
  State<WhatsSend> createState() => _WhatsSendState();
}

class _WhatsSendState extends State<WhatsSend> {
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
                color: Color.fromARGB(255, 183, 224, 247),
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
                        color: Color.fromARGB(255, 168, 225, 169),
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
                            color: Color.fromARGB(255, 183, 224, 247),
                          ),
                        ),
                        Text(
                          'My Card',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 183, 224, 247),
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
                        color: Color.fromARGB(255, 168, 225, 169),
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
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 6, right: 0, bottom: 6),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 183, 224, 247),
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
            BottomAppBar(
              height: 70,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Text(
                        'Favorite',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.access_time_filled_rounded,
                        color: Colors.grey,
                      ),
                      Text(
                        'Recent',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.grey,
                      ),
                      Text(
                        'Contacts',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.window,
                        color: Colors.grey,
                      ),
                      Text(
                        'Keypad',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.voicemail_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        'Voicemail',
                        style: TextStyle(
                          color: Colors.grey,
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
    );
  }
}
// Doubt
// Contact at centre
// My card scrollable
// floating action button before bottom app bar