import 'package:flutter/material.dart';
import 'package:merceria_fat/models/Ciudadano.dart';
import 'package:merceria_fat/themes/app_theme.dart';
import 'package:merceria_fat/widgets/custom_form_field.dart';
import 'package:provider/provider.dart';

import '../providers/register_provider.dart';
import 'home_screen.dart';
import 'package:merceria_fat/main.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValuesLogin = {
      'correo' : '',
      'contraseña' : ''
    };

    Future<void> _submitForm() async{
        final registerProvider = Provider.of<RegisterProvider>(context, listen: false);
        var response = await registerProvider.logIn(formValuesLogin);
        if(response != null){
          Navigator.push(context, MaterialPageRoute(builder: (context, ) => HomeScreen(ciudadano: response)));
        }
    }
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
      ),
      body: 
        ListView(
          children: [
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.secundaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Form(
                  key: myFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text('Bienvenido', style: TextStyle(
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                        child: CustomFormField(
                          hintText: 'Correo',
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icons.email,
                          propertyName: 'correo',
                          formValues: formValuesLogin,
                          textStyle: const TextStyle(
                            color: Colors.white
                          )),
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                        child: CustomFormField(
                          hintText: 'Contraseña',
                          maxLength: 16,
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: Icons.password,
                          obscureText: true,
                          propertyName: 'contraseña',
                          formValues: formValuesLogin,
                          textStyle: const TextStyle(
                            color: Colors.white),
                          ),
                          
                      ),
                      const SizedBox(height: 60.0,),
                      InkWell(
                        onTap: (){
                          bool isValidate = myFormKey.currentState?.validate() ?? false;
                              //Cuando tu formulario sea inconrrecto lanzar instruciones
                              if (isValidate) {
                                // ignore: avoid_print
                                _submitForm();
                              }
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Text('Iniciar Sesión', style: TextStyle(
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
            ),
            const SizedBox(height :10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                const Text('¿Es tu primera vez?',
                style: TextStyle(
                  color: Color(0xFF1C5159),
                ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'registro_usuario');
                  }, 
                  child: const Text('Registrese aquí'))
              ],
            )
          ],
        ),
      );
  }
}
