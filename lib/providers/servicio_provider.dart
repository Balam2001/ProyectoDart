import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import '../models/Servicio.dart';

class ServicioProvider extends ChangeNotifier
{
  final String _host ='apifat.somee.com';
  List<Servicio> displayServicios =[];
  ServicioProvider(){
    getServicios();
  }

  getServicios() async {
    const String endPoint = 'api/Servicio/all';
    final url = Uri.http(_host, endPoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.get(url);
      String body = utf8.decode(response.bodyBytes);
      displayServicios = List<Servicio>.from(
        json.decode(body).map((x) => Servicio.fromJson(x)));
      notifyListeners();
    } finally{
      client.close();
    }
  }
}