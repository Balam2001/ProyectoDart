import 'package:flutter/material.dart';
import 'package:merceria_fat/providers/torneo_provider.dart';
import 'package:merceria_fat/screens/torneo_screen.dart';
import 'package:provider/provider.dart';

class TorneosScreen extends StatefulWidget {
  const TorneosScreen({Key? key}) : super(key: key);

  @override
  State<TorneosScreen> createState() => _TorneosScreenState();
}
class _TorneosScreenState extends State<TorneosScreen>{

  @override
  Widget build(BuildContext context) {
    final torneoProvider = Provider.of<TorneoProvider>(context);
    final torneos = torneoProvider.displayTorneos;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Torneos',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          contentPadding: EdgeInsets.only(top: 20, left: 50, bottom: 20),
          title: Text(torneos[index].nombre),
          leading: FadeInImage.assetNetwork(placeholder: 'assets/images/404.png', image: 'https://cdn-icons-png.flaticon.com/512/3176/3176272.png'),
          onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TorneoScreen(torneo: torneos[index])));
                },
        ),
        separatorBuilder: (_,__) => Divider(
          height: 10,
        ),
        itemCount: torneos.length)
      );

  }
}
  

