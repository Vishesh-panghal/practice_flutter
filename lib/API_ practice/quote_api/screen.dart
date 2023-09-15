// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';

import 'Data/data_modal.dart';
import 'package:http/http.dart' as http;

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  late Future<QuoteModal> data;
  @override
  void initState() {
    data = getQuotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quote App')),
      body: FutureBuilder<QuoteModal>(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error ${snapshot.error}'),
            );
          } else if (snapshot.data! != null) {
            return ListView.builder(
              itemCount: snapshot.data!.quotes!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('${index + 1}'),
                  title: Text(snapshot.data!.quotes![index].quote),
                  subtitle: Text(snapshot.data!.quotes![index].author),
                );
              },
            );
          } else {
            return Center(
              child: Text('No data'),
            );
          }
        },
      ),
    );
  }

// This function is to retrive data from url, if data found successfully then decode that data to Map format and use in UI:-
  Future<QuoteModal> getQuotes() async {
    // convert url into uri
    Uri mUrl = Uri.parse("https://dummyjson.com/quotes");
    var res = await http.get(mUrl);

// HTTP success code == 200
    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      return QuoteModal.fromJson(json);
    } else {
      return QuoteModal();
    }
  }
}
