
//String clubToJson(List<Club> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Club {
    Club({
        required this.id,
        required this.logotipo,
        required this.nombre,
        required this.direccion,
        required this.telefono,
        required this.latitud,
        required this.longitud,
        required this.horario,
    });

    final int id;
    final String logotipo;
    final String nombre;
    final String direccion;
    final String telefono;
    final double latitud;
    final double longitud;
    final String horario;

    factory Club.fromJson(Map<String, dynamic> json) => Club(
        id: json["id"],
        logotipo: json["logotipo"],
        nombre: json["nombre"],
        direccion: json["direccion"],
        telefono: json["telefono"],
        latitud: json["latitud"].toDouble(),
        longitud: json["longitud"].toDouble(),
        horario: json["horario"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "logotipo": logotipo,
        "nombre": nombre,
        "direccion": direccion,
        "telefono": telefono,
        "latitud": latitud,
        "longitud": longitud,
        "horario": horario,
    };
}