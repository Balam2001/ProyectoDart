
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
      
        body: Column(
          children: <Widget>[
            const Image(
              image: NetworkImage('https://cdn-icons-png.flaticon.com/512/47/47847.png'),
              width: 80,
              height: 80,
            
            ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              'Mis Torneos',
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              '-Torneo 1',
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              '-Torneo 2',
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              '-Torneo 3',
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
