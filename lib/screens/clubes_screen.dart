import 'package:flutter/material.dart';



class ClubesScreen extends StatefulWidget {
  const ClubesScreen({Key? key}) : super(key: key);

  @override
  State<ClubesScreen> createState() => _ClubesScreenState();
}

class _ClubesScreenState extends State<ClubesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clubes'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, 'filtros');
            },
            icon: Icon(Icons.filter_alt)
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
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

