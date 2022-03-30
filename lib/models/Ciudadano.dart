class Ciudadano {
    Ciudadano({
        required this.id,
        required this.nombres,
        required this.apellidos,
        required this.correo,
        required this.contrasenia
    });

    final int id;
    final String nombres;
    final String apellidos;
    final String correo;
    final String contrasenia;

    factory Ciudadano.fromJson(Map<String, dynamic> json) => Ciudadano(
        id: json["id"],
        nombres: json["nombres"],
        apellidos: json["apellidos"],
        correo: json["correo"],
        contrasenia: json["contraseña"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombres": nombres,
        "apellidos": apellidos,
        "correo": correo,
        "contraseña": contrasenia,
    };
}
