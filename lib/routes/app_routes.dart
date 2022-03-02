
import 'package:flutter/material.dart';
import 'package:merceria_fat/screens/screens.dart';
import 'package:merceria_fat/models/item_menu.dart';

class AppRoutes{
  static const String initialRoute = 'home';
  
  static final menuOptions = <ItemMenu>[
    ItemMenu(label: 'Login', route: 'login', icon: Icons.account_circle, screen: const LoginScreen()),
    ItemMenu(label: 'Registro', route: 'registro_usuario', icon: Icons.fingerprint, screen: const RegistroScreen())  
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

