import 'package:flutter/material.dart';
import 'package:merceria_fat/themes/app_theme.dart';
import 'package:merceria_fat/widgets/custom_form_field.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Map<String, String> formValues = {
    'Nombres' : '',
    'Apellidos' : '',
    'Correo' : '',
    'Contraseña' : ''
    };

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
      ),
      body:  ListView(
          children: [
            const SizedBox(height: 10),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                        child: CustomFormField(
                          hintText: 'Nombres',
                          keyboardType: TextInputType.name,
                          maxLength: 40,
                          autofocus: true,
                          prefixIcon: Icons.person,
                          propertyName: 'Nombres',
                          formValues: formValues,
                          textStyle: const TextStyle(
                            color: Colors.white
                          ))
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                        child: CustomFormField(
                          hintText: 'Apellidos',
                          keyboardType: TextInputType.name,
                          maxLength: 40,
                          prefixIcon: Icons.person,
                          propertyName: 'Apellidos',
                          formValues: formValues,
                          textStyle: const TextStyle(
                            color: Colors.white
                          ))
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                        child: CustomFormField(
                          hintText: 'Correo',
                          keyboardType: TextInputType.emailAddress,
                          maxLength: 60,
                          prefixIcon: Icons.email,
                          propertyName: 'Correo',
                          formValues: formValues,
                          textStyle: const TextStyle(
                            color: Colors.white
                          ))
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                        child: CustomFormField(
                          hintText: 'Contraseña',
                          keyboardType: TextInputType.visiblePassword,
                          maxLength: 16,
                          prefixIcon: Icons.password,
                          obscureText: true,
                          propertyName: 'Contraseña',
                          formValues: formValues,
                          textStyle: const TextStyle(
                            color: Colors.white
                          ))
                      ),
                      const SizedBox(height: 50.0,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppTheme.primaryColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          )
                        ),
                        child: InkWell(
                          onTap: (){
                            bool isValidate = myFormKey.currentState?.validate() ?? false;
                            //Cuando tu formulario sea inconrrecto lanzar instruciones
                            if (isValidate) {
                              // ignore: avoid_print
                              print(formValues);
                            }
                            myFormKey.currentState?.reset();
                            Navigator.pop(context);
                          },
                          
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}