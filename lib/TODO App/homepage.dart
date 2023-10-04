// ignore_for_file: unused_field, must_be_immutable
import 'package:flutter/material.dart';

import 'utlis/todo_tile.dart';

class TODOHomepage extends StatefulWidget {
  const TODOHomepage({super.key});

  @override
  State<TODOHomepage> createState() => _TODOHomepageState();
}

class _TODOHomepageState extends State<TODOHomepage> {
  @override
  void initState() {
    super.initState();
  }

  final TextEditingController _addTask = TextEditingController();
  final TextEditingController _updateTask = TextEditingController();

  updateTask(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.amber.shade300,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          content: SizedBox(
            height: 200,
            width: 300,
            child: Column(
              children: [
                const Text(
                  'Edit Task',
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
                  controller: TextEditingController(text: ''),
                  onChanged: (newValue) {},
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      'Update task 🔻',
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
                      title: 'Update',
                      onPressed: () {
                        Navigator.of(context).pop();
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: 'Cancel',
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

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.amber.shade300,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
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
                      onPressed: () {},
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
          child:
              //  const Center(
              //     child: Text(
              //       'Add new task..',
              //       style: TextStyle(
              //         fontFamily: 'Poppins',
              //         fontSize: 18,
              //         color: Colors.black,
              //       ),
              //     ),
              //   )
              ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  right: 15.0,
                  left: 15.0,
                ),
                child: ToDoTilePage(
                  taskName: '',
                  taskComplete: true,
                  onChanged: (value) => '',
                  deleteFunction: (value) => '',
                  updateFunction: (value) => updateTask(index),
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
