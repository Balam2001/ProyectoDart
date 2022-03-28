import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

import '../models/Club.dart';

class ClubProvider extends ChangeNotifier
{
  final String _host ='ApiFAT.somee.com';
  final Map<String, dynamic> _parameters = {'':''};
  List<Club> displayClubs =[];
  ClubProvider(){
    getClubes();
  }

  getClubes() async {
    const String endPoint = 'api/Club/all';
    final url = Uri.https(_host, endPoint, _parameters);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      displayClubs = List<Club>.from(
        json.decode(response).map((x) => Club.fromJson(x)));
      notifyListeners();
      print(response);
    } finally{
      client.close();
    }
  }
}



//List<Club> clubFromJson(String str) => List<Club>.from(json.decode(str).map((x) => Club.fromJson(x)));
