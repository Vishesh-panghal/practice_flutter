// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:authentication_pages/Nike_store/Data/app_database.dart';
import 'package:flutter/material.dart';

class NoteAppPage extends StatefulWidget {
  const NoteAppPage({super.key});

  @override
  State<NoteAppPage> createState() => _NoteAppPageState();
}

class _NoteAppPageState extends State<NoteAppPage> {
  late AppDatabase myDB;
  List<Map<String, dynamic>> arrNotes = [];

  @override
  void initState() {
    super.initState();
    // here we call database..
    myDB = AppDatabase.db;
    addNote();
  }

  // Fun to add a note(row) in table(note)...
  void addNote() async {
    bool check = await myDB.addNote(
        'Flutter', 'Flutter provides many new things in these days..');

    // if check returns true than fetch all table..
    if (check) {
      arrNotes = await myDB.fetchAllNotes();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 800,
            child: ListView.builder(
              itemCount: arrNotes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${arrNotes[index]['title']}'),
                  subtitle: Text('${arrNotes[index]['desc']}'),
                );
              },
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              addNote();
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
