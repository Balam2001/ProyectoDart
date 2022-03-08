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
          fontSize: 20.0,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ListTile(
                title: const Text ('Club 1'),
                subtitle:  const Text("Este es una breve descripción"),
                leading: Image.network('https://user-images.githubusercontent.com/43202228/57966812-40ee8580-7957-11e9-800e-23e9a80aeca5.png'),
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
                leading: Image.network('https://user-images.githubusercontent.com/43202228/57966812-40ee8580-7957-11e9-800e-23e9a80aeca5.png'),
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
                leading: Image.network('https://user-images.githubusercontent.com/43202228/57966812-40ee8580-7957-11e9-800e-23e9a80aeca5.png'),
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

