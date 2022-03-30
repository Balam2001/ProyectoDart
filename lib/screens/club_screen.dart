import 'package:flutter/material.dart';
import 'package:merceria_fat/providers/providers.dart';
import 'package:merceria_fat/screens/screens.dart';
import 'package:merceria_fat/screens/torneo_screen.dart';
import 'package:merceria_fat/themes/app_theme.dart';
import 'package:provider/provider.dart';

import '../models/Club.dart';
import '../models/Servicio.dart';
import '../models/Torneo.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({Key? key, required this.club}) : super(key: key);
  final Club club;
  
  

  @override
  Widget build(BuildContext context) {
    final servicioProvider = Provider.of<ServicioProvider>(context);
    final servicios = servicioProvider.displayServicios;
    List<Servicio> serviciosClub = servicios.where((Servicio) => Servicio.claveClub == club.id).toList(); 

    final torneoProvider = Provider.of<TorneoProvider>(context);
    final torneos = torneoProvider.displayTorneos;
    List<Torneo> torneosClub = torneos.where((Torneo) => Torneo.claveClub == club.id).toList(); 

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
            child:  Column(
              children: [
                ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    contentPadding: EdgeInsets.only(top: 20, left: 50),
                    title: Text(serviciosClub[index].disciplina),
                    leading: FadeInImage.assetNetwork(placeholder: 'assets/images/404.png', image: 'https://cdn-icons-png.flaticon.com/512/3176/3176272.png'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ServicioScreen(servicio: serviciosClub[index])));
                      },
                  ),
                  separatorBuilder: (_,__) => Divider(
                    height: 10,
                  ),
                  itemCount: serviciosClub.length)
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
                ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    contentPadding: EdgeInsets.only(top: 20, left: 50),
                    title: Text(torneosClub[index].nombre),
                    leading: FadeInImage.assetNetwork(placeholder: 'assets/images/404.png', image: 'https://cdn-icons-png.flaticon.com/512/3176/3176272.png'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TorneoScreen(torneo: torneosClub[index])));
                      },
                  ),
                  separatorBuilder: (_,__) => Divider(
                    height: 10,
                  ),
                  itemCount: torneosClub.length)
              ],
            ),
          ),
          const SizedBox(height:40),
          
        ],
      ),
    );
  }
}