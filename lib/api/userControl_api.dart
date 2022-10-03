import 'dart:convert';

import 'package:http/http.dart' as http;

var qry = 'https://dmsdev-api.eksad.com/gateway/medapp/v1/qry';
var cmd = 'https://dmsdev-api.eksad.com/gateway/medapp/v1/cmd';

Future<List<dynamic>> getUserControl() async {
  var response = await http.get(Uri.parse('$qry/user/get'));

  return jsonDecode(response.body)['data'];
}

Future<bool> editUserControl(idUser, namaRs, noRs, alamatRs, namaPic, noPic,
    emailPic, password, statusUser) async {
  final response = await http.post(Uri.parse('$cmd/user/signup'),
      body: jsonEncode({
        "idUser": idUser,
        "namaRs": namaRs,
        "noRs": noRs,
        "alamatRs": alamatRs,
        "namaPic": namaPic,
        "noPic": noPic,
        "emailPic": emailPic,
        "password": password,
        "statusUser": statusUser
      }),
      headers: {'Content-type': 'application/json; charset=UTF-8'});

  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<bool> deleteUserControl(idUser) async {
  final response = await http.post(Uri.parse('$cmd/user/updateUser'),
      body: jsonEncode({"idUser": idUser}),
      headers: {'Content-type': 'application/json; charset=UTF-8'});
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
