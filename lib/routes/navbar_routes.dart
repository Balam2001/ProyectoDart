import 'package:flutter/material.dart';
import 'package:merceria_fat/models/Ciudadano.dart';
import 'package:merceria_fat/screens/screens.dart';

class NavBarRoutes extends StatelessWidget {
final int index;
const NavBarRoutes({Key? key, required this.index}) : super(key: key);
@override
  Widget build(BuildContext context) {
    List<Widget> pages =[
      HomeScreen(ciudadano: Ciudadano(id: 0, nombres: '', apellidos: '', correo: '', contrasenia: ''),),
      const ClubesScreen(),
      const TorneosScreen()
    ];
    return pages[index];
  }
}