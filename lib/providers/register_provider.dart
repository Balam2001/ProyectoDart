import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:merceria_fat/models/Ciudadano.dart';

class RegisterProvider extends ChangeNotifier
{
  

  Future<http.Response>postRegister(Map formvalues) async {
    const String endPoint = 'api/Ciudadano';
    final String _host = 'apifat.somee.com';
    final url = Uri.http(_host, endPoint);
    Map<String, String> requestHeaders = {
       'Content-type': 'application/json',
       'Accept': 'application/json',
     };
    Response response = await post(url, body: json.encode(formvalues), headers: requestHeaders);
    return response;  
  
  }

  Future<Ciudadano?> logIn(Map formvalues) async {
    const String endPoint = 'api/Login';
    final String _host = 'apifat.somee.com';
    final url = Uri.http(_host, endPoint);
    Map<String, String> requestHeaders = {
       'Content-type': 'application/json',
       'Accept': 'application/json',
     };
    Response response = await post(url, body: json.encode(formvalues), headers: requestHeaders);
    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);
      Map<String, dynamic> user = jsonDecode(body);
      Ciudadano cuenta = new Ciudadano.fromJson(user);
      notifyListeners();
      return cuenta;
    }
    else{
      Ciudadano? cuenta;
      return cuenta;
    }
    
  
  }

    
} 