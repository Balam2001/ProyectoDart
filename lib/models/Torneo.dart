class Torneo {
    Torneo({
        required this.id,
        required this.claveDisciplina,
        required this.disciplina,
        required this.claveClub,
        required this.club,
        required this.nombre,
        required this.numeroEquipos,
        required this.numeroEquiposDisp,
        required this.costo,
        required this.reglas,
        required this.rondas,
        required this.tipo,
        required this.estado,
    });

    final int id;
    final int claveDisciplina;
    final String disciplina;
    final int claveClub;
    final String club;
    final String nombre;
    final int numeroEquipos;
    final int numeroEquiposDisp;
    final int costo;
    final String reglas;
    final int rondas;
    final String tipo;
    final bool estado;

    factory Torneo.fromJson(Map<String, dynamic> json) => Torneo(
        id: json["id"],
        claveDisciplina: json["claveDisciplina"],
        disciplina: json["disciplina"],
        claveClub: json["claveClub"],
        club: json["club"],
        nombre: json["nombre"],
        numeroEquipos: json["numeroEquipos"],
        numeroEquiposDisp: json["numeroEquiposDisp"],
        costo: json["costo"],
        reglas: json["reglas"],
        rondas: json["rondas"],
        tipo: json["tipo"],
        estado: json["estado"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "claveDisciplina": claveDisciplina,
        "disciplina": disciplina,
        "claveClub": claveClub,
        "club": club,
        "nombre": nombre,
        "numeroEquipos": numeroEquipos,
        "numeroEquiposDisp": numeroEquiposDisp,
        "costo": costo,
        "reglas": reglas,
        "rondas": rondas,
        "tipo": tipo,
        "estado": estado,
    };
}
