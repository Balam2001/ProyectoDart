import 'package:flutter/material.dart';

class Filtros_screen extends StatelessWidget {
  const Filtros_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: const Text('Filtros')
      ),
      body: Column(children:const <Widget>[
  
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Nombre',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Teléfono'
          ),
        ),
      ]),
      
    );
  }
}