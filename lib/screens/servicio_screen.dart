import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class ServicioScreen extends StatelessWidget {
  const ServicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Servicio'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
          
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30,),
          Icon(Icons.design_services,
          size: 130,),
          Divider(
            height: 20,
            thickness: 5,
            indent: 50,
            endIndent: 50,
            color: AppTheme.secundaryColor,
          ),
          const SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(right: 100, left: 100),
            child: Column(
              children: [
                ListTile(
                  title: Text('Clases de Baseball'),
                  subtitle: Text('Nombre'),
                ),
                ListTile(
                  title: Text('Miercoles - Viernes'),
                  subtitle: Text('Horario'),
                ),
                ListTile(
                  title: Text('20'),
                  subtitle: Text('Numero de Personas'),
                ),
                ListTile(
                  title: Text('Sí'),
                  subtitle: Text('Equipo Especial'),
                ),
                ListTile(
                  title: Text('Si'),
                  subtitle: Text('Se aceptan personas discapacitadass'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}