import 'package:flutter/material.dart';
import 'package:merceria_fat/providers/club_provider.dart';
import 'package:provider/provider.dart';

class ClubesScreen extends StatefulWidget {
  const ClubesScreen({Key? key}) : super(key: key);

  @override
  State<ClubesScreen> createState() => _ClubesScreenState();
}

class _ClubesScreenState extends State<ClubesScreen> {
  
  @override
  Widget build(BuildContext context) {
    final clubProvider = Provider.of<ClubProvider>(context);
    final clubes = clubProvider.displayClubs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista clubes'),
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
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(clubes[index].nombre),
          leading: FadeInImage.assetNetwork(placeholder: 'assets/images/404.png', image: clubes[index].logotipo),
        ),
        separatorBuilder: (_,__) => Divider(),
        itemCount: clubes.length)
    );
  }
}

