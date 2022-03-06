import 'package:flutter/material.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Club'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height:50),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF3BAEBF),
              borderRadius: BorderRadius.circular(20)
            ),
            margin: const EdgeInsets.only(left: 100, right: 100),
            child: const SizedBox(
              width: 100,
              child: Text(
                'Chicago Bulls',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize : 30,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
          ),
          const SizedBox(height:20),
          Image.network(
          'https://www.pngplay.com/wp-content/uploads/13/Chicago-Bulls-Background-PNG-Image.png',
          width: 300,
          height: 200,
          alignment: Alignment.center,
          ),
          const SizedBox(height:20),
          Container(
            margin: const EdgeInsets.only(left: 100, right: 100),
            decoration: const BoxDecoration(
              color: Colors.amber
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('Hola',),
                Text('Hola2',)
              ],
            ),
          )
          
        ],
      ),
    );
  }
}