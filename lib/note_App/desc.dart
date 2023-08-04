// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DescriptionNotePage extends StatefulWidget {
  var title = '';
  var desc = '';
  // DescriptionNotePage(this.title,this.desc);
  @override
  State<DescriptionNotePage> createState() => _DescriptionNotePageState();
}

class _DescriptionNotePageState extends State<DescriptionNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(6, 6),
                        right: Radius.elliptical(6, 6),
                      )),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.grey,
                    size: 32,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(6, 6),
                        right: Radius.elliptical(6, 6),
                      )),
                  child: Icon(
                    Icons.edit,
                    color: Colors.grey,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          // Text()
        ],
      ),
    );
  }
}
