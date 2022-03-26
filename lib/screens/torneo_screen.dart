import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';


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
                  title: Text('Torneo Primavera 2022'),
                  subtitle: Text('Nombre'),
                ),
                ListTile(
                  title: Text('Basketball'),
                  subtitle: Text('Deporte'),
                ),
                ListTile(
                  title: Text('Club Ejemplo'),
                  subtitle: Text('Organizador'),
                ),
                ListTile(
                  title: Text('8'),
                  subtitle: Text('Número de equipos'),
                ),
                ListTile(
                  title: Text('500'),
                  subtitle: Text('Costo de Entrada'),
                ),
                ListTile(
                  title: Text('3'),
                  subtitle: Text('Número de Rondas'),
                ),
                ListTile(
                  title: Text('Local'),
                  subtitle: Text('Tipo'),
                ),
                ListTile(
                  title: Text('Disponible'),
                  subtitle: Text('Estado'),
                ),
                ListTile(
                  title: Text('Reglas'),
                  onTap: (){},
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
          Text(
            'Resultado',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height : 10),
          Container(
            padding: EdgeInsets.only(right: 50, left: 50),
            child: Column(
              children: [
                ListTile(
                  title: Text('Ejemplo Club2'),
                  subtitle: Text('Ganador'),
                  leading: Image.asset('assets/images/Club_IMG.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Suscribirse'),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: AppTheme.primaryColor,
              fixedSize: Size(0, 40)
            ),),
          SizedBox(height: 20,),
        ],
      )
    );
  }
}