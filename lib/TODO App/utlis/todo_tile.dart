// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTilePage extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  Function(BuildContext)? updateFunction;
  ToDoTilePage({
    super.key,
    required this.taskName,
    required this.taskComplete,
    required this.onChanged,
    required this.deleteFunction,
    required this.updateFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          onPressed: deleteFunction,
          icon: Icons.delete,
          backgroundColor: Colors.red.shade300,
        ),
        SlidableAction(
          onPressed: updateFunction,
          icon: Icons.update,
          backgroundColor: Colors.blue,
        ),
      ]),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          title: Text(
            taskName,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.black,
              decoration: taskComplete
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          trailing: Checkbox(
            value: taskComplete,
            onChanged: onChanged,
            activeColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
