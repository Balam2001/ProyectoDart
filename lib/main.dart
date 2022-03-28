import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:merceria_fat/providers/club_provider.dart';
import 'package:merceria_fat/routes/navbar_routes.dart';
import 'package:merceria_fat/models/theme_model.dart';
import 'package:merceria_fat/themes/app_theme.dart';
import 'package:merceria_fat/widgets/bottom_navbar.dart';
import 'package:merceria_fat/routes/app_routes.dart';
import 'package:merceria_fat/widgets/drawer_widget.dart';
import 'package:provider/provider.dart';
void main() => runApp(const MyApp());

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) => super.createHttpClient(context)..badCertificateCallback =(cert, host, port) => true;

}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ClubProvider(),
          lazy: false,
        )
      ],
      child: MyApp(),);
  }
}

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
    
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child){
      return MaterialApp(
      title: 'FAT',
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        appBar: AppBar(
          title: const Text('Finding a Tournament'),
          centerTitle: true,
          backgroundColor: const Color(0xFF1C5159),
          actions: [IconButton(
                icon: Icon(themeNotifier.isDark
                    ? Icons.nightlight_round
                    : Icons.wb_sunny),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                })],
          
        ),
        drawer: const DrawerWidget(),
        bottomNavigationBar: myBNB,
        body: NavBarRoutes(index: index)
      ),
      routes: AppRoutes.getRoutes(),
      theme: themeNotifier.isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
    );
        }
      )
    );
    
  }
}