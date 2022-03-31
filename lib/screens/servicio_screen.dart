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
          FadeInImage.assetNetwork(placeholder: 'assets/images/404.png', image: 'https://www3.gobiernodecanarias.org/comercio/consumecanarias/wp-content/uploads/2021/05/logopordefecto_color-deporte.png',
          height: 200,
          width: 100,

          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 50,
            endIndent: 50,
            color: AppTheme.secundaryColor,
          ),
          const SizedBox(height: 20),
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
                  title: Text(servicio.equipoEspecial == false ? 'No' : 'Si'),
                  subtitle: Text('Equipo Especial'),
                ),
                ListTile(
                  title: Text(servicio.descEsquipoEspecial),
                  subtitle: Text('Descripcion equipo especial'),
                ),
                ListTile(
                  title: Text(servicio.persConCapacidad == false ? 'No' : 'Si'),
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