import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import '../models/Ciudadano.dart';

class CiudadanoProvider extends ChangeNotifier
{
  final String _host ='apifat.somee.com';
  List<Ciudadano> displayCiudadanos =[];
  CiudadanoProvider(){
    getCiudadanos();
  }

  getCiudadanos() async {
    const String endPoint = 'api/Ciudadano/all';
    final url = Uri.http(_host, endPoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.get(url);
      String body = utf8.decode(response.bodyBytes);
      displayCiudadanos = List<Ciudadano>.from(
        json.decode(body).map((x) => Ciudadano.fromJson(x)));
      notifyListeners();
    } finally{
      client.close();
    }
  }
}