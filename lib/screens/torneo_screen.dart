import 'package:flutter/material.dart';

class TorneoScreen extends StatelessWidget {
  const TorneoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Torneo',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Suscribirse')),
            style: 
        ],
      )
    );
  }
}