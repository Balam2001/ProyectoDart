import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';

import '../models/Club.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({Key? key, required this.club}) : super(key: key);
  final Club club;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Club'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height:30),
          const SizedBox(height:20),
          Image.network(
          (club.logotipo),
          width: 300,
          height: 200,
          alignment: Alignment.center,
          ),
          const SizedBox(height:20, width: 20,),
          const SizedBox(height:20),
          Text('Detalles',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            
          ),
          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 50,
            endIndent: 50,
            color: AppTheme.secundaryColor,
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    (club.nombre),
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    'Nombre'),
                ),
                ListTile(
                  title: Text(
                    (club.direccion),
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    'Dirección'),
                ),
                ListTile(
                  title: Text(
                    (club.telefono),
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    'Teléfono'),
                ),
                ListTile(
                  title: Text(
                    (club.horario),
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    'Horario'),
                ),
              ],
            ),
          ),
          const SizedBox(height:40),
          Text(
            'Servicios',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            Divider(
            height: 20,
            thickness: 5,
            indent: 50,
            endIndent: 50,
            color: AppTheme.secundaryColor,
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Servicio 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold),
                    ),
                  leading: Image.asset('assets/images/404.png'),
                  onTap: (){
                    Navigator.pushNamed(context, 'servicio');
                  },
                  )
              ],
            ),
          ),
          
          const SizedBox(height:40),
          Text(
            'Torneos',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            Divider(
            height: 20,
            thickness: 5,
            indent: 50,
            endIndent: 50,
            color: AppTheme.secundaryColor,
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Torneo 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold),
                    ),
                  leading: Image.asset('assets/images/trofeo.png'),
                  onTap: (){
                    Navigator.pushNamed(context, 'torneo');
                  },
                  )
              ],
            ),
          ),
          const SizedBox(height:40),
          
        ],
      ),
    );
  }
}