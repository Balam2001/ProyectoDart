import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ButtonScreen'),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),
    );
  }
}