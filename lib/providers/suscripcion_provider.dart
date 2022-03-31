import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

import '../models/Suscripcion.dart';

class SuscripcionProvider extends ChangeNotifier
{
  final String _host ='apifat.somee.com';
  List<Suscripcion> displaySuscripcions =[];
  SuscripcionProvider(){
    getSuscripciones();
  }

  getSuscripciones() async {
    const String endPoint = 'api/Suscripcion/all';
    final url = Uri.http(_host, endPoint);
    final client = RetryClient(http.Client());
    try {
      final response = await client.get(url);
      String body = utf8.decode(response.bodyBytes);
      displaySuscripcions = List<Suscripcion>.from(
        json.decode(body).map((x) => Suscripcion.fromJson(x)));
      notifyListeners();
    } finally{
      client.close();
    }
  }
}

//List<Suscripcion> SuscripcionFromJson(String str) => List<Suscripcion>.from(json.decode(str).map((x) => Suscripcion.fromJson(x)));
