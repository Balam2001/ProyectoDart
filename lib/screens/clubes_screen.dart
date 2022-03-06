import 'package:flutter/material.dart';

class ClubesScreen extends StatelessWidget {
  const ClubesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clubes'),
        centerTitle: true,
      ),
    );
  }
}