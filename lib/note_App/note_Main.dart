// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NoteMainPage extends StatefulWidget {
  const NoteMainPage({super.key});

  @override
  State<NoteMainPage> createState() => _NoteMainPageState();
}

class _NoteMainPageState extends State<NoteMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50),
          //...................Heading and searchBar..........//
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notes',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                    height: 40,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.2),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(6, 6),
                        right: Radius.elliptical(6, 6),
                      ),
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    )),
              ],
            ),
          ),
          //
        ],
      ),
    );
  }
}
