import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:medapp_eksad/model/user_model.dart';

Future<bool> signUp(nama, email, nohp, username, password)async{
  final response = await http.post(
      Uri.parse('http://10.107.203.242:8081/medapp/v1/api/user/signup'),
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
Future<bool> signIn(username, password)async{
  final response = await http.post(
      Uri.parse('http://10.3.4.250:8081/medapp/v1/api/user/signin'),
      body: jsonEncode({
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
Future<bool> signOut(username)async{
  final response = await http.post(
      Uri.parse('http://10.3.4.250:8081/medapp/v1/api/user/signout'),
      body: jsonEncode({
        "username": username}),
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
Future<bool> resetPassword(username, password, verifypass)async{
  final response = await http.put(
      Uri.parse('http://10.3.4.250:8081/medapp/v1/api/user/resetPassword'),
      body: jsonEncode({
        "username": username,
        "password": password,
        "passwordBaru": verifypass
      }),
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
Future<List<dynamic>> getUser() async {
  var response = await http
      .get(Uri.parse('http://10.3.4.231:8082/medapp/v1/api/user/get'));
  var resultJson = jsonDecode(response.body)['data'];
  List<user> walist = await resultJson
      .map<user>((json) => user.fromJson(json))
      .toList();
  return walist;
}
