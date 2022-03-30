import 'package:flutter/material.dart';
import 'package:merceria_fat/models/Servicio.dart';
import '../themes/app_theme.dart';

class ServicioScreen extends StatelessWidget {
  const ServicioScreen({Key? key, required this.servicio}) : super(key: key);
  final Servicio servicio;

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
                  title: Text(servicio.disciplina),
                  subtitle: Text('Nombre'),
                ),
                ListTile(
                  title: Text(servicio.horario),
                  subtitle: Text('Horario'),
                ),
                ListTile(
                  title: Text(servicio.numeroPersonas.toString()),
                  subtitle: Text('Numero de Personas'),
                ),
                ListTile(
                  title: Text(servicio.equipoEspecial.toString()),
                  subtitle: Text('Equipo Especial'),
                ),
                ListTile(
                  title: Text(servicio.descEsquipoEspecial),
                  subtitle: Text('Descripcion equipo especial'),
                ),
                ListTile(
                  title: Text(servicio.persConCapacidad.toString()),
                  subtitle: Text('Se aceptan personas discapacitadas'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}