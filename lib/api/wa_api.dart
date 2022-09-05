import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:medapp_eksad/model/wa_model.dart';

Future<bool> saveWa(nama, nohp) async {
  final response = await http.post(
      Uri.parse('http://10.3.4.231:8081/medapp/v1/api/whatapps/save'),
      body: jsonEncode({
        "nama": nama,
        "no": nohp
      }),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
Future<List<dynamic>> getWA () async {
  var response = await http
      .get(Uri.parse('http://10.3.4.231:8082/medapp/v1/api/whatapps/get'));
  var resultJson = jsonDecode(response.body)['data'];
  List<wa> walist = await resultJson
      .map<wa>((json) => wa.fromJson(json))
      .toList();
  return walist;
}