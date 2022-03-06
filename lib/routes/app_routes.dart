
import 'package:flutter/material.dart';
import 'package:merceria_fat/screens/screens.dart';
import 'package:merceria_fat/models/item_menu.dart';

class AppRoutes{
  static final menuOptions = <ItemMenu>[
    ItemMenu(label: 'Iniciar sesión', route: 'login', icon: Icons.account_circle, screen: const LoginScreen()),
    ItemMenu(label: 'Configuración', route: 'registro_usuario', icon: Icons.settings, screen: const RegistroScreen())  
  ];

  static final countMenuOptions = menuOptions.length;
  
  static Map<String, Widget Function(BuildContext)> getRoutes () {
    Map<String, Widget Function(BuildContext)>appRoutes={};
    
    for (final item in menuOptions){
      appRoutes.addAll({item.route : (BuildContext context) => item.screen});
    }
    
    return appRoutes;
  }
}

