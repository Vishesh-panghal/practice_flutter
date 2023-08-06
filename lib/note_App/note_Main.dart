// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:authentication_pages/Nike_store/Data/app_database.dart';
import 'package:flutter/material.dart';

class NoteMainPage extends StatefulWidget {
  const NoteMainPage({super.key});

  @override
  State<NoteMainPage> createState() => _NoteMainPageState();
}

class _NoteMainPageState extends State<NoteMainPage> {
  late AppDatabase myDB;
  List<Map<String, dynamic>> arrNotes = [];

  String? title;
  var titleController = TextEditingController();
  var descController = TextEditingController();

  @override
  void initState() {
    myDB = AppDatabase.db;
    getNotes();
    super.initState();
  }

  void getNotes() async {
    arrNotes = await myDB.fetchAllNotes();
    setState(() {});
  }

  void addNote(String title, String desc) async {
    bool check = await myDB.addNote(title, desc);
    if (check) {
      arrNotes = await myDB.fetchAllNotes();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        SizedBox(height: 50),
        //...................Heading and searchBar..........//
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
        //.......................Notes grid................//
        SizedBox(height: 30),
        Container(
          height: 670,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12)),
          child: GridView.builder(
            itemCount: arrNotes.length,
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 5),
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  '${arrNotes[index]['title']}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Add Note',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          '____________________________',
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(height: 25),
                        TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                            hintText: 'Title',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          controller: descController,
                          decoration: InputDecoration(
                            hintText: 'Description',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black54,
                            ),
                            hintMaxLines: 12,
                          ),
                        ),
                        SizedBox(height: 35),
                        ElevatedButton(
                            onPressed: () {
                              var title = titleController.text.toString();
                              var desc = descController.text.toString();

                              addNote(title, desc);
                              titleController.clear();
                              descController.clear();
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text('Add Note here'))
      ]),
    );
  }
}
