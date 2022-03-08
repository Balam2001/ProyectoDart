
import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String _hexCode = '0xFF1C5159';
  static final Color colorbarra = Color(int.parse(_hexCode));

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: AppTheme.primaryColor,
        centerTitle: true,
        ),
        

        body:
        ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('Hola mundo')
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('hola mundo 2'),
                Text('')
              ],
            )
          ],
        )
      
    );
  }
}
