import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:medapp_eksad/model/contact_model.dart';

Future savecontact(nama, email, nohp, message) async {
  final response = await http.post(
      Uri.parse('http://10.107.223.156:8081/medapp/v1/api/contact/save'),
      body: jsonEncode({
        "nama": nama,
        "email": email,
        "noHp": nohp,
        "message": message}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  // if (response.statusCode == 200) {
  //   return true;
  // } else {
  //   return false;
  // }
  return response.statusCode;
}

Future<List<contact>> showcontact() async {
  var response = await http
      .get(Uri.parse('http://10.107.223.156:8082/medapp/v1/api/contact/get'));
  var resultJson = jsonDecode(response.body)['data'];
  List<contact> contactlist = await resultJson
  .map<contact>((json) => contact.fromJson(json))
  .toList();
  return contactlist;
}