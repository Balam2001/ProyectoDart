import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';

class PerfilUsuario extends StatefulWidget {
  const PerfilUsuario({Key? key}) : super(key: key);

  @override
  State<PerfilUsuario> createState() => _PerfilUsuarioState();
}

class _PerfilUsuarioState extends State<PerfilUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        title: Text(
          'Perfil',
        ),

      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Icon(Icons.person,
            size: 200),
          SizedBox(height: 20,),
          Container(
          
            child: Column(
              children: [
              ListTile(
                title: Text('Jonathan'),
                subtitle: Text('Nombres') ,
              ),
              ListTile(
                title: Text('Herrera'),
                subtitle: Text('Apellidos'),
              ),
              ListTile(
                title: Text('99999999'),
                subtitle: Text('Número'),
              ),
              SizedBox(height: 50,),
              Container(
                width: 100,
                height: 50,
                color: AppTheme.primaryColor,
                child: TextButton(
                  child: Text('Editar Perfil',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  onPressed: (){
                    Navigator.pushNamed(context, 'editar_perfil');
                  },
                ),
                
              )
            ]),
          )
        ],
      )


    );
  }
}