import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {
  final String _baseUrl = "LoginITD2024.somee.com";

  final storage = new FlutterSecureStorage();

  Future<String?> createUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'Password': password
    };

    //TODO: CunetasController si no funciona
    final url = Uri.http(_baseUrl, '/api/Cuentas/registrar');

    final resp = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: json.encode(authData),
    );

    final Map<String, dynamic> decodeResp = json.decode(resp.body);

    if (decodeResp.containsKey('token')) {
      await storage.write(key: 'token', value: decodeResp['token']);
      return null;
    } else {
      decodeResp['error']['message'];
    }
  }
}
