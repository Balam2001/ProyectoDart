import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';

import '../models/Torneo.dart';


class TorneoScreen extends StatelessWidget {
  const TorneoScreen({Key? key, required this.torneo}) : super(key: key);
  final Torneo torneo;

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
        children: <Widget>[
          SizedBox(height: 40,),
          Image.asset(
            'assets/images/tournament.png',
            height: 200,
            width: 200,
            ),
            SizedBox(height: 20,),
            Divider(
            height: 20,
            thickness: 5,
            indent: 50,
            endIndent: 50,
            color: AppTheme.secundaryColor,
          ),
          SizedBox(height: 10,),
            Container(
            padding: EdgeInsets.only(right: 50, left: 50),
            child: Column(
              children: [
                ListTile(
                  title: Text(torneo.nombre),
                  subtitle: Text('Nombre'),
                ),
                ListTile(
                  title: Text(torneo.disciplina),
                  subtitle: Text('Disciplina'),
                ),
                ListTile(
                  title: Text(torneo.club),
                  subtitle: Text('Organizador'),
                ),
                ListTile(
                  title: Text( torneo.numeroEquipos.toString()),
                  subtitle: Text('Número de equipos'),
                ),
                ListTile(
                  title: Text(torneo.costo.toString()),
                  subtitle: Text('Costo de Entrada'),
                ),
                ListTile(
                  title: Text(torneo.rondas.toString()),
                  subtitle: Text('Número de Rondas'),
                ),
                ListTile(
                  title: Text(torneo.tipo),
                  subtitle: Text('Tipo'),
                ),
                ListTile(
                  title: Text(torneo.estado == false ? 'No disponible' : 'Disponible'),
                  subtitle: Text('Estado'),
                ),
                ListTile(
                  title: Text(torneo.reglas),
                ),
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 50,
            endIndent: 50,
            color: AppTheme.secundaryColor,
          ),
          
          
         /* ElevatedButton(
            onPressed: (){}, 
            child: Text('Suscribirse'),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: AppTheme.primaryColor,
              fixedSize: Size(0, 40)
            ),), */
          SizedBox(height: 20,),
        ],
      )
    );
  }
}