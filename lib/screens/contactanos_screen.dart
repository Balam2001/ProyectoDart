
import 'package:flutter/material.dart';

class ContactanosScreen extends StatelessWidget {
  const ContactanosScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Contáctanos',
        style: TextStyle(
          fontWeight: FontWeight.bold,


        ),),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 50, right: 50),
        children: [
          SizedBox(height: 30,),
          ListTile(
            title: Text('christianjesus2001@gmail.com'),
            subtitle: Text('Correo 1'),
          ),
          ListTile(
            title: Text('abrahamherrera0001@gmail.com'),
            subtitle: Text('Correo 2'),
          ),
          ListTile(
            title: Text('jona_sabido@gmail.com'),
            subtitle: Text('Correo 3'),
          ),
          ListTile(
            title: Text('+52 999 945 4554'),
            subtitle: Text('Teléfono 1'),
          ),
          ListTile(
            title: Text('+52 999 924 4345'),
            subtitle: Text('Teléfono 2'),
          )
        ],
      ),
      
    );
  }
}