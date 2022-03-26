import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String? labelText;
  final TextStyle? textStyle;
  final String? hintText;
  final int maxLength;
  final bool autofocus;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final String propertyName;
  final Map<String, String> formValues;

  const CustomFormField({
    Key? key, 
    this.labelText,
    this.textStyle,
    this.hintText,
    this.maxLength =40,
    this.autofocus=true,
    this.obscureText=false,
    this.keyboardType=TextInputType.name,
    this.prefixIcon, 
    required this.propertyName, 
    required this.formValues,
  }) : super(key: key);
  
  String? validateNullOrEmpty(String? value){
    if (value == null) return 'El campo es requerido';

    if(value.isEmpty) return 'El campo es requerido';

    //Agrega más validaciones
    /*if(propertyName.contains('Correo'))
    {
      var correo = value.length;
      


    }
    */


    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: formValues[propertyName],
      style: textStyle,
      maxLength: maxLength,
      autofocus: autofocus,
      obscureText: obscureText,
      keyboardType: !obscureText ? keyboardType : TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon)
      ),
      validator: (value) => validateNullOrEmpty(value),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) => formValues[propertyName] = value,
    );
  }
}