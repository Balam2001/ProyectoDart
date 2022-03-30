// To parse this JSON data, do
//
//     final requestRegister = requestRegisterFromJson(jsonString);

import 'dart:convert';

RequestRegister requestRegisterFromJson(String str) => RequestRegister.fromJson(json.decode(str));

String requestRegisterToJson(RequestRegister data) => json.encode(data.toJson());

class RequestRegister {
    RequestRegister({
        required this.nombres,
        required this.apellidos,
        required this.correo,
        required this.contrasea,
    });

    final String nombres;
    final String apellidos;
    final String correo;
    final String contrasea;

    factory RequestRegister.fromJson(Map<String, dynamic> json) => RequestRegister(
        nombres: json["nombres"],
        apellidos: json["apellidos"],
        correo: json["correo"],
        contrasea: json["contraseña"],
    );

    Map<String, dynamic> toJson() => {
        "nombres": nombres,
        "apellidos": apellidos,
        "correo": correo,
        "contraseña": contrasea,
    };
}
