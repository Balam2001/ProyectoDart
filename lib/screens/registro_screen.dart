import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
      ),
      body: GestureDetector(
        onTap: (){
          final FocusScopeNode focus = FocusScope.of(context);
          if(!focus.hasPrimaryFocus && focus.hasFocus){
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.secundaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text('Registro', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white)
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text('Ingrese sus datos',style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),),
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Nombres',
                          prefixIcon: Icon(Icons.panorama_fisheye_sharp),
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0
                            )
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Apellidos',
                          prefixIcon: Icon(Icons.panorama_fisheye_sharp),
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0
                            )
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Correo',
                          prefixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0
                            )
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                      child: TextField(
                        autofocus: false,
                        obscureText: true,
                        obscuringCharacter : '•',
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          prefixIcon: Icon(Icons.security),
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0
                            )
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 60.0,),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Text('Registrarse', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          )
                        ),
                      ),
                    ),
                  ],
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}