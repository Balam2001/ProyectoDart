import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:merceria_fat/routes/navbar_routes.dart';
import 'package:merceria_fat/themes/app_theme.dart';
import 'package:merceria_fat/widgets/bottom_navbar.dart';
import 'package:merceria_fat/routes/app_routes.dart';
import 'package:merceria_fat/widgets/drawer_widget.dart';
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  BottomNavBar ?myBNB;

  @override
  void initState() {
    myBNB = BottomNavBar(currentIndex: (i){
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
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
        drawer: const DrawerWidget(),
        bottomNavigationBar: myBNB,
        body: NavBarRoutes(index: index)
      ),
      routes: AppRoutes.getRoutes(),
      theme: AppTheme.lightTheme,
    );
  }
}