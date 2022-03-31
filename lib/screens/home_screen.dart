import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String _hexCode = '0xFF1C5159';
  static final Color colorbarra = Color(int.parse(_hexCode));

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: const Text('Hola Usuario'),
        backgroundColor: AppTheme.primaryColor,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        centerTitle: true,
        ),
        

        body: ListView(
          children: <Widget>[
            const SizedBox(height: 40,),
            const Text(
              'Mis torneos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:30.0,
              )
              ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/tournament.png',
              width: 200,
              height: 200,
            ),
            Divider(
              height: 40,
              thickness: 5,
              indent: 50,
              endIndent: 50,
              color: AppTheme.primaryColor,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ListTile(
                title: const Text ('Torneo 1'),
                subtitle:  const Text("Este es una breve descripción"),
                leading: Image.asset('assets/images/trofeo.png'),
                onTap: (){
                  Navigator.pushNamed(context, 'torneo');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ListTile(
                title: const Text ('Torneo 1'),
                subtitle:  const Text("Este es una breve descripción"),
                leading:Image.asset('assets/images/trofeo.png'), 
                onTap: (){
                  Navigator.pushNamed(context, 'torneo');
                },
              ),
            ),
            


              
          ],


        )
    );
    
  }
}
