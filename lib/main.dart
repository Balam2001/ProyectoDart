import 'package:flutter/material.dart';
import 'package:merceria_fat/screens/screens.dart';
import 'package:merceria_fat/themes/app_theme.dart';

void main() => runApp(const MyApp());
  class MyApp extends StatefulWidget {
  const MyApp ({Key? key}) :super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;

  final List<Widget> _paginas = [
    const HomeScreen(),
    const ClubScreen(),
    const TorneosScreen()
  ];


  @override
  Widget build(BuildContext context) {
    
    var iconos = 
      [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        const BottomNavigationBarItem(icon: Icon(Icons.sports),label : "Clubes"),
        const BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: "Torneos")
      ];


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finding A Tornament',
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Finding A Tornament'),
  ),
  body: 
  _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _paginaActual =index;
            });
          },
          currentIndex: _paginaActual,
          items: iconos,
        ),


  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        
        DrawerHeader(
          margin:  EdgeInsets.only(bottom :5),
          decoration: BoxDecoration(
            color: Color(0xFF3BAEBF)
          ), child: null,
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('IniciarSesion'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuración'),
        ),
      ],
    ),
          
        ),
      ),
      theme: AppTheme.lightTheme,
    );
  }
}

