// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:authentication_pages/provider_practice/student_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_provider.dart';

class ClassListPage extends StatelessWidget {
  ClassListPage({super.key});

  var updatednameController = TextEditingController();
  var nameController = TextEditingController();
  var updatedclassController = TextEditingController();
  var classController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Class Student Names',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Divider(),
            Consumer<ListDataProvider>(
              builder: (_, provider, __) {
                List<studentModal> data = provider.getList();
                print(data.length);
                return SizedBox(
                  height: 700,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          updatednameController.text = data[index].title;
                          updatedclassController.text = data[index].cls;
                          showModalBottomSheet(
                              context: context,
                              builder: (_) {
                                return SizedBox(
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Text('Update Data'),
                                      TextField(
                                        controller: updatednameController,
                                      ),
                                      SizedBox(height: 11),
                                      TextField(
                                        controller: updatedclassController,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            context
                                                .read<ListDataProvider>()
                                                .updateData(
                                                    studentModal(
                                                      title: nameController.text
                                                          .toString(),
                                                      cls: classController.text
                                                          .toString(),
                                                    ),
                                                    data[index].id!);
                                          },
                                          child: Text('Update')),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: ListTile(
                          title: Text(
                            data[index].title,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(
                            data[index].cls,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                          trailing: InkWell(
                            onTap: () {
                              context
                                  .read<ListDataProvider>()
                                  .removeData(data[index].id!);
                            },
                            child: Icon(
                              Icons.delete,
                              color: Colors.red.shade700,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Add Student',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(),
                            TextField(
                              controller: nameController,
                            ),
                            TextField(
                              controller: classController,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context
                                    .read<ListDataProvider>()
                                    .addData(studentModal(
                                      title: nameController.text.toString(),
                                      cls: classController.text.toString(),
                                    ));
                              },
                              child: Text('Add'),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text('Add Data'))
          ],
        ),
      ),
    );
  }
}
