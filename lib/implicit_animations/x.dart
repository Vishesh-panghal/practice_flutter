import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network('https://images.freeimages.com/images/large-previews/3c5/rainbow-flag-1144037.jpg'),
    );
  }
}