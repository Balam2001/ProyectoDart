
import 'dart:convert';

Servicio servicioFromJson(String str) => Servicio.fromJson(json.decode(str));

String servicioToJson(Servicio data) => json.encode(data.toJson());

class Servicio {
    Servicio({
        required this.claveDisciplina,
        required this.id,
        required this.disciplina,
        required this.claveClub,
        required this.club,
        required this.horario,
        required this.numeroPersonas,
        required this.equipoEspecial,
        required this.descEsquipoEspecial,
        required this.persConCapacidad,
    });

    final int id;
    final int claveDisciplina;
    final String disciplina;
    final int claveClub;
    final String club;
    final String horario;
    final int numeroPersonas;
    final bool equipoEspecial;
    final String descEsquipoEspecial;
    final bool persConCapacidad;

    factory Servicio.fromJson(Map<String, dynamic> json) => Servicio(
        id: json["id"],
        claveDisciplina: json["claveDisciplina"],
        disciplina: json["disciplina"],
        claveClub: json["claveClub"],
        club: json["club"],
        horario: json["horario"],
        numeroPersonas: json["numeroPersonas"],
        equipoEspecial: json["equipoEspecial"],
        descEsquipoEspecial: json["descEsquipoEspecial"],
        persConCapacidad: json["persConCapacidad"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "claveDisciplina": claveDisciplina,
        "disciplina": disciplina,
        "claveClub": claveClub,
        "club": club,
        "horario": horario,
        "numeroPersonas": numeroPersonas,
        "equipoEspecial": equipoEspecial,
        "descEsquipoEspecial": descEsquipoEspecial,
        "persConCapacidad": persConCapacidad,
    };
}
