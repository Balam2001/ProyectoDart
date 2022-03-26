import 'package:flutter/material.dart';
class TorneosScreen extends StatelessWidget {
  const TorneosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Torneos',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 20,),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ListTile(
                title: const Text ('Club 1'),
                subtitle:  const Text("Este es una breve descripción"),
                leading: Image.asset(
                  'assets/images/Club_IMG.png',
                  
                ),
                onTap: (){
                  Navigator.pushNamed(context, 'club_screen');
                  
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ListTile(
                title: const Text ('Club 2'),
                subtitle:  const Text("Este es una breve descripción"),
                leading: Image.asset(
                  'assets/images/Club_IMG.png'),
                onTap: (){
                  Navigator.pushNamed(context, 'club_screen');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ListTile(
                title: const Text ('Club 3'),
                subtitle:  const Text("Este es una breve descripción"),
                leading: Image.asset(
                  'assets/images/Club_IMG.png'),
                onTap: (){
                  Navigator.pushNamed(context, 'club_screen');
                },
              ),
            ),

            
          
        ],
      ),
    );
  }
}

