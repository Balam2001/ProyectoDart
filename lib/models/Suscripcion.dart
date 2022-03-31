class Suscripcion {
    Suscripcion({
        required this.id,
        required this.claveTorneo,
        required this.claveCiudadano,
        required this.estado,
    });

    final int id;
    final int claveTorneo;
    final int claveCiudadano;
    final bool estado;

    factory Suscripcion.fromJson(Map<String, dynamic> json) => Suscripcion(
        id: json["id"],
        claveTorneo: json["claveTorneo"],
        claveCiudadano: json["claveCiudadano"],
        estado: json["estado"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "claveTorneo": claveTorneo,
        "claveCiudadano": claveCiudadano,
        "estado": estado,
    };
}