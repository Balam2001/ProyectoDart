
import 'package:flutter/material.dart';
import 'package:merceria_fat/screens/screens.dart';
import 'package:merceria_fat/models/item_menu.dart';

class AppRoutes{
  static final menuOptions = <ItemMenu>[
    ItemMenu(label: 'Iniciar sesión', route: 'login', icon: Icons.account_circle, screen: const LoginScreen()),
    ItemMenu(label: 'Perfil', route: 'perfil', icon: Icons.account_circle_rounded, screen: const PerfilUsuario()),
    ItemMenu(label: 'Configuración', route: 'configuracion', icon: Icons.settings, screen: const ConfigScreen()),
  ];

  static final navOptions = <ItemMenu>[
    ItemMenu(label: 'Registro Usuario', route:'registro_usuario', icon: Icons.account_circle, screen: const RegistroScreen()),
    ItemMenu(label: 'Club', route: 'club_screen', icon: Icons.access_alarm_sharp, screen: const ClubScreen()),
    ItemMenu(label: 'Home', route: 'home', icon: Icons.house, screen: const HomeScreen()),

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

