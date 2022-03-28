
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';
import '../widgets/custom_form_field.dart';

class FormularioEditarPerf extends StatelessWidget {
  final Map<String, String> formFiltros = {
    'Nombres' : '',
    'Apellido' : '',
    'Telefono' : ''
    };
  FormularioEditarPerf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          
          SizedBox( height: 80,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: CustomFormField(
              propertyName: 'Nombres',
              formValues: formFiltros,
              hintText: 'Nombres',
              maxLength: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: CustomFormField(
              propertyName: 'Apellidos',
              formValues: formFiltros,
              hintText: 'Apellidos',
              maxLength: 12
              ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: CustomFormField(
              propertyName: 'Telefono',
              formValues: formFiltros,
              hintText: 'Teléfono',
              maxLength: 60,
            ),
          ),
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20))),
            
            child: InkWell(
              onTap: () {
                print(formFiltros);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 25, top: 25, left: 20, right: 20),
                    child: Text('Aceptar', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,),),
                  )
                ],
              ),
            ),
          )
        ],


      ),
    );
  }
}