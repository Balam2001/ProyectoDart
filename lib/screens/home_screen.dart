import 'package:flutter/material.dart';
import 'package:merceria_fat/models/Ciudadano.dart';
import 'package:merceria_fat/models/Suscripcion.dart';
import 'package:merceria_fat/models/Torneo.dart';
import 'package:merceria_fat/providers/suscripcion_provider.dart';
import 'package:merceria_fat/themes/app_theme.dart';
import 'package:provider/provider.dart';

import '../providers/torneo_provider.dart';
import 'torneo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.ciudadano}) : super(key: key);
  final Ciudadano ciudadano;

  static const String _hexCode = '0xFF1C5159';
  static final Color colorbarra = Color(int.parse(_hexCode));

  @override
  Widget build(BuildContext context) {
    List<Torneo> torneosAccount = [];
    if(ciudadano.id == 0){
      final suscripcionProvider = Provider.of<SuscripcionProvider>(context);
      final suscripciones = suscripcionProvider.displaySuscripcions;
      //List<Suscripcion> suscripcionesAccount = suscripciones.where((Suscripcion) => Suscripcion.claveCiudadano == ciudadano.id).toList();
      
      final torneoProvider = Provider.of<TorneoProvider>(context);
      final torneos = torneoProvider.displayTorneos;
      
      torneosAccount = torneos.where((Torneo) => Torneo.estado == true).toList();
    }
    return  Scaffold(
        appBar: AppBar(
        title: Text(ciudadano.nombres == '' ? 'Hola Usuario' : 'Hola ' + ciudadano.nombres),
        backgroundColor: AppTheme.primaryColor,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        centerTitle: true,
        ),
        

        body: ListView(
          children: <Widget>[
            const SizedBox(height: 40,),
            const Text(
              'Torneos Disponibles',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:30.0,
              )
              ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/tournament.png',
              width: 200,
              height: 200,
            ),
            Divider(
              height: 40,
              thickness: 5,
              indent: 50,
              endIndent: 50,
              color: AppTheme.primaryColor,
            ),
            if(torneosAccount.length != 0) Container(
            height: 200,
            padding: EdgeInsets.only(left: 40, right: 40),
            child:  Container(
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    contentPadding: EdgeInsets.only(top: 20, left: 50),
                    title: Text(torneosAccount[index].nombre),
                    leading: FadeInImage.assetNetwork(placeholder: 'assets/images/404.png', image: 'https://cdn-icons-png.flaticon.com/512/3176/3176272.png',
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TorneoScreen(torneo: torneosAccount[index])));}),
                  separatorBuilder: (_,__) => Divider(height: 10,),
                  itemCount: torneosAccount.length
                )),
          ),
            
            
           /* SizedBox(height: 10,),
            if(ciudadano.id == 0) TextButton(
            child: Text(
              'Inicia sesión para',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppTheme.primaryColor
              ),
              ),
            onPressed: (){
              Navigator.pushNamed(context, 'contact');
            },
            ) 
            else if(torneosAccount.length == 0) Text(
              'No estás suscrito a ningún torneo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: AppTheme.primaryColor,
              ),
              ), */
              
              
            
              
          ],


        )
    );
    
  }
}
