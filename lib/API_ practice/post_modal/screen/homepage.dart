// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:authentication_pages/API_%20practice/post_modal/Data/data_modal.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  late Future<DataModal> data;

  @override
  void initState() {
    data = Future.value(DataModal());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Post API')),
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  width: .5,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              'assets/Images/coludy.png',
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 32,
              ),
              InkWell(
                onTap: () {
                  data = getPostData();
                  setState(() {});
                },
                child: Icon(
                  Icons.post_add,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              Icon(
                Icons.send,
                color: Colors.white,
                size: 32,
              ),
            ],
          ),
          SizedBox(height: 50),
          FutureBuilder(
            future: data,
            builder: (cotext, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                );
              } else if (snapshot.data != null &&
                  snapshot.data!.posts != null &&
                  snapshot.data!.posts!.isNotEmpty) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.posts?.length,
                    itemBuilder: (context, index) {
                      var newpost = snapshot.data!.posts?[index];
                      return Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Text(
                            '${index + 1}',
                          ),
                          title: Text('${newpost?.title}'),
                          subtitle: Text('${newpost?.body}'),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    'No data...!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Future<DataModal> getPostData() async {
    var mUrl = Uri.parse('https://dummyjson.com/posts');

    var res = await http.get(mUrl);

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      return DataModal.fromJson(json);
    } else {
      return DataModal();
    }
  }
}
