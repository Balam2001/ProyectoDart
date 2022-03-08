import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';

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
                'Yankees NY',
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
          'https://cdn.freebiesupply.com/images/large/2x/new-york-yankees-ny-logo.png',
          width: 300,
          height: 200,
          alignment: Alignment.center,
          ),
          const SizedBox(height:20, width: 20,),
          Container(
            margin: const EdgeInsets.only(left: 80, right: 80),
            height: 5.0,
            decoration: BoxDecoration(
              color: AppTheme.primaryColor
            ),
            child: const Text(''),
            ),
          
          
        ],
      ),
    );
  }
}