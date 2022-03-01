import 'package:flutter/material.dart';
import 'package:merceria_fat/routes/app_routes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                width: 100.0,
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
              ),)
              
              
            ],
          ),
        ),
      ),
      routes: AppRoutes.getRoutes(),
    );
  }
}