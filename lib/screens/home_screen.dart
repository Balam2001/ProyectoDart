
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String _hexCode = '0xFF1C5159';
  static final Color colorbarra = Color(int.parse(_hexCode));

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: colorbarra,
        centerTitle: true,
        ),
        

        body: const Text(
          'Hola mundo...'
        )
      
    );
  }
}
