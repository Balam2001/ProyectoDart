/* import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http/retry.dart';
import '../models/RequestRegister.dart';

class RegisterProvider extends ChangeNotifier
{
  final String _host ='apifat.somee.com';
  int? statusCode;
  RegisterProvider(String register){
    postRegister(register);
  }

  postRegister(RequestRegister register) async {
    const String endPoint = 'api/Ciudadano/';
    String json = jsonEncode(register);
    final url = Uri.http(_host, endPoint);
    Response response = await post(url, body: json);
    statusCode = response.statusCode;
    }
  } */