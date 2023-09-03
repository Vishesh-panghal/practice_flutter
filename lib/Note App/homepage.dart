// ignore_for_file: unused_field, must_be_immutable

import 'package:authentication_pages/Note%20App/data/database.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'utlis/todo_tile.dart';

class NoteHomepage extends StatefulWidget {
  NoteHomepage({super.key});

  @override
  State<NoteHomepage> createState() => _NoteHomepageState();
}

class _NoteHomepageState extends State<NoteHomepage> {
  // reference hive box:-

  final _myBox = Hive.box('TodoBox');
  TODODatabase db = TODODatabase();

  @override
  void initState() {
   db.loadData();
    super.initState();
  }


  final TextEditingController _addTask = TextEditingController();

  void checkBoxChanged(bool? vlaue, int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updateDatabase();
  }

  saveTask() {
    setState(() {
      db.todoList.add([_addTask.text.toString(), false]);
      _addTask.clear();
    });
    db.updateDatabase();
    Navigator.of(context).pop();
  }

  deleteTask(int index) {
    setState(() {
      db.todoList.removeAt(index);
    });
     db.updateDatabase();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.amber.shade300,
          content: SizedBox(
            height: 200,
            width: 300,
            child: Column(
              children: [
                const Text(
                  'Add new Task',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(thickness: 2),
                const SizedBox(height: 5),
                TextField(
                  controller: _addTask,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      ' Task 🔻',
                      style:
                          TextStyle(fontFamily: 'Poppins', color: Colors.black),
                    ),
                    focusColor: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      title: 'Save',
                      onPressed: saveTask,
                    ),
                    MyButton(
                      title: 'Cancle',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createNewTask();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'TODO',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decoration: TextDecoration.lineThrough,
            letterSpacing: 5,
          ),
        ),
      ),
      body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Colors.amber.shade200,
          ),
          child: db.todoList.isEmpty
              ? const Center(
                  child: Text(
                    'Add new task..',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: db.todoList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        right: 15.0,
                        left: 15.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ToDoTilePage(
                          taskName: db.todoList[index][0],
                          taskComplete: db.todoList[index][1],
                          onChanged: (value) => checkBoxChanged(value, index),
                          deleteFunction: (value) => deleteTask(index),
                        ),
                      ),
                    );
                  },
                )),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  VoidCallback onPressed;
  MyButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
