import 'package:flutter/material.dart';
import 'package:merceria_fat/routes/app_routes.dart';
import 'package:merceria_fat/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginActual = 0;

  final List<Widget> _paginas = [
    const HomeScreen(),
    const ClubScreen(),
    const TorneosScreen()
  ];

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      
      home: 
      Scaffold(
        appBar: AppBar(
          title: const Text('Finding a Tournament'),
          centerTitle: true,
          backgroundColor: const Color(0xFF1C5159),
          
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Color(0xFF3BAEBF)
                ),
                child:null,
              ),
              SizedBox(
                height: 500.0,
                child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  title: Text(AppRoutes.menuOptions[index].label),
                  leading: Icon(AppRoutes.menuOptions[index].icon),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);}
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: AppRoutes.countMenuOptions,
              ),
              )
            ],
          ),
        ),
        body: _paginas[_paginActual],
        bottomNavigationBar:  BottomNavigationBar(
          items:[
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: 'Torneo')
          ],
          onTap: (index){
            setState(() {
              _paginActual =index;
            });
          },
          currentIndex: _paginActual,
        ),
      ),
      routes: AppRoutes.getRoutes(),
    );
  }
}