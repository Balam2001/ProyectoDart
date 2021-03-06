
import 'package:flutter/material.dart';
import 'package:merceria_fat/widgets/custom_form_field.dart';

import '../themes/app_theme.dart';

class FiltrosScreen extends StatelessWidget {
FiltrosScreen({Key? key}) : super(key: key);
final Map<String, String> formFiltros = {
    'Nombre' : '',
    'Telefono' : '',
    'Direccion' : ''
    };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtros')
      ),
      body: ListView(
        children: [
          
          SizedBox( height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: CustomFormField(
              propertyName: 'Nombre',
              formValues: formFiltros,
              hintText: 'Agregue el nombre del Club',
              maxLength: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: CustomFormField(
              propertyName: 'Telefono',
              formValues: formFiltros,
              hintText: 'Agregue el Teléfono del Club',
              maxLength: 12
              ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: CustomFormField(
              propertyName: 'Direccion',
              formValues: formFiltros,
              hintText: 'Agregue el Direccion del Club',
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


      )

        
      );
  }
}