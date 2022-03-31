import 'package:flutter/material.dart';
import 'package:merceria_fat/models/Ciudadano.dart';
import 'package:merceria_fat/models/Club.dart';
import 'package:merceria_fat/models/Servicio.dart';
import 'package:merceria_fat/screens/contactanos_screen.dart';
import 'package:merceria_fat/screens/formulario_editarperf.dart';
import 'package:merceria_fat/screens/screens.dart';
import 'package:merceria_fat/models/item_menu.dart';

import '../models/Torneo.dart';

class AppRoutes{
  static final menuOptions = <ItemMenu>[
    ItemMenu(label: 'Iniciar sesión', route: 'login', icon: Icons.login, screen: const LoginScreen()),
    ItemMenu(label: 'Perfil', route: 'perfil', icon: Icons.person, screen: const PerfilUsuario()),
  ];


  static final navOptions = <ItemMenu>[
    ItemMenu(label: 'Registro Usuario', route:'registro_usuario', icon: Icons.account_circle, screen: const RegistroScreen()),
    ItemMenu(label: 'Club', route: 'club_screen', icon: Icons.access_alarm_sharp, screen: ClubScreen(club: Club(nombre: '', logotipo: '', direccion: '', horario: '', latitud: 0, longitud: 0, id: 0, telefono: ''),)),
    ItemMenu(label: 'Home', route: 'home', icon: Icons.house, screen: HomeScreen(ciudadano: Ciudadano(id: 0, nombres: '', apellidos: '', correo: '', contrasenia: ''),)),
    ItemMenu(label: 'Torneo', route: 'torneo', icon: Icons.person , screen: TorneoScreen(torneo: Torneo(id: 0, claveDisciplina: 0, disciplina: '', claveClub: 0, club: '', nombre: '', numeroEquipos: 0, numeroEquiposDisp: 0, costo: 0, reglas: '', rondas: 0, tipo: '', estado: false),)),
    ItemMenu(label: 'Filtros', route: 'filtros', icon: Icons.filter, screen:  FiltrosScreen()),
    ItemMenu(label: 'Servicio', route: 'servicio', icon: Icons.abc, screen: ServicioScreen(servicio: Servicio(claveClub: 0, club: '', id: 0, disciplina: '', claveDisciplina: 0, horario: '', numeroPersonas: 0, equipoEspecial: false, descEsquipoEspecial: '', persConCapacidad: false),)),
    ItemMenu(label: 'EditarPerfil', route: 'editar_perfil',icon: Icons.anchor, screen: FormularioEditarPerf()),
    ItemMenu(label: 'Contactanos', route: 'contact', icon: Icons.abc_outlined, screen: ContactanosScreen())
  ];

  static final countMenuOptions = menuOptions.length;
  static final countnavOptions = navOptions.length;

  
  static Map<String, Widget Function(BuildContext)> getRoutes () {
    Map<String, Widget Function(BuildContext)>appRoutes={};
    
    for (final item in menuOptions){
      appRoutes.addAll({item.route : (BuildContext context) => item.screen});
    }
    for (final item in navOptions){
      appRoutes.addAll({item.route : (BuildContext context) => item.screen});
    }
    
    return appRoutes;
  }
}

