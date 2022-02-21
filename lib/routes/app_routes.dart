/*
import 'package:flutter/material.dart';
import 'package:merceria_fat/screens/screens.dart';
import 'package:merceria_fat/models/item_menu.dart';

class AppRoutes{
  static const String initialRoute = 'home';
  
  static final menuOptions = <ItemMenu>[
    ItemMenu(label: 'Home Screen', route: 'home', icon: Icons.house, screen: const HomeScreen()),
    ItemMenu(label: 'ListView Screen', route: 'basiclv', icon: Icons.list, screen: const BasicListsWiewScreen()),
    ItemMenu(label: 'Buttons Screen', route: 'buttons', icon: Icons.fingerprint, screen: const ButtonScreen()),
    ItemMenu(label: 'Cards Screen', route: 'cards', icon: Icons.filter_list, screen: const CardsScreen() ),
    ItemMenu(label: 'Fields Screen', route: 'fields', icon: Icons.text_fields, screen: const FieldScreen()),
    ItemMenu(label: 'ListView Separeted', route: 'separetedlv', icon: Icons.list_sharp, screen: const SeparatedScreen() ),
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
*/