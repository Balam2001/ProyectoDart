import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

import '../models/Torneo.dart';

class TorneoProvider extends ChangeNotifier
{
  final String _host ='apifat.somee.com';
  List<Torneo> displayTorneos =[];
  TorneoProvider(){
    getTorneos();
  }

  getTorneos() async {
    const String endPoint = 'api/Torneo/all';
    final url = Uri.http(_host, endPoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.get(url);
      String body = utf8.decode(response.bodyBytes);
      displayTorneos = List<Torneo>.from(
        json.decode(body).map((x) => Torneo.fromJson(x)));
      notifyListeners();
    } finally{
      client.close();
    }
  }
}



//List<Club> clubFromJson(String str) => List<Club>.from(json.decode(str).map((x) => Club.fromJson(x)));
