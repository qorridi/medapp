import 'dart:convert';

import 'package:http/http.dart' as http;

Future<bool> signup(nama, email, nohp, username, password)async{
  final response = await http.post(
      Uri.parse('http://10.3.4.250:8081/medapp/v1/api/user/save'),
    body: jsonEncode({
      "namaUser": nama,
      "emailUser": email,
      "noHp": nohp,
      "username": username,
      "password": password}),
    headers: {
        'Content-type' : 'application/json; charset=UTF-8',
    }
  );
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
  // return response.statusCode;
}