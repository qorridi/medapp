import 'dart:convert';

import 'package:http/http.dart' as http;

var cmd = 'https://dmsdev-api.eksad.com/gateway/medapp/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/medapp/v1/qry';

Future<bool> createSosmed (wa, ln, tw, ig, yt) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveSettingSosmed'),
      body: jsonEncode(
          {
            "whatsapp": wa,
            "linkedin": ln,
            "twitter": tw,
            "instagram": ig,
            "youtube": yt
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

Future<bool> updateSosmed (id, wa, ln, tw, ig, yt) async {
  final response = await http
      .post(Uri.parse('$cmd/settingsosmed/saveSettingSosmed'),
      body: jsonEncode({
        'idSettingSosmed': id,
        'whatsapp': wa,
        'linkedin': ln,
        'twitter': tw,
        'instagram': ig,
        'youtube': yt
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


Future<List<dynamic>> getSosmedDesc() async {
  var response = await http.get(
      //Uri.parse('$qry/settingsosmed/getSettingSosmedById'));
      Uri.parse('$qry/settingsosmed/getSettingSosmedByIdDesc'));
  return jsonDecode(response.body)['data'];
}


Future<bool> createWA (wa) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveWhatsapp'),
      body: jsonEncode(
          {
            "whatsapp": wa,
            // "linkedin": ln,
            // "twitter": tw,
            // "instagram": ig,
            // "youtube": yt,
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

Future<bool> createLN (ln) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveLinkedin'),
      body: jsonEncode(
          {
           // "whatsapp": wa,
            "linkedin": ln,
            // "twitter": tw,
            // "instagram": ig,
            // "youtube": yt,
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

Future<bool> createTW (tw) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveTwitter'),
      body: jsonEncode(
          {
           // "whatsapp": wa,
          //  "linkedin": ln,
            "twitter": tw,
            // "instagram": ig,
            // "youtube": yt,
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


Future<bool> createIG (ig) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveInstagram'),
      body: jsonEncode(
          {
            // "whatsapp": wa,
            // "linkedin": ln,
            // "twitter": tw,
            "instagram": ig,
           // "youtube": yt,
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

Future<bool> createYT (yt) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveYoutube'),
      body: jsonEncode(
          {
            // "whatsapp": wa,
            // "linkedin": ln,
            // "twitter": tw,
            // "instagram": ig,
            "youtube": yt,
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

Future<List<dynamic>> getWaDesc() async {
  var response = await http.get(
      Uri.parse('$qry/settingsosmed/getWhatsappByIdDesc'));
  return jsonDecode(response.body)['data'];
}

Future<List<dynamic>> getLnDesc() async {
  var response = await http.get(
      Uri.parse('$qry/settingsosmed/getLinkedinByIdDesc'));
  return jsonDecode(response.body)['data'];
}

Future<List<dynamic>> getTwDesc() async {
  var response = await http.get(
      Uri.parse('$qry/settingsosmed/getTwitterByIdDesc'));
  return jsonDecode(response.body)['data'];
}

Future<List<dynamic>> getIgDesc() async {
  var response = await http.get(
      Uri.parse('$qry/settingsosmed/getInstagramByIdDesc'));
  return jsonDecode(response.body)['data'];
}

Future<List<dynamic>> getYtDesc() async {
  var response = await http.get(
      Uri.parse('$qry/settingsosmed/getYoutubeByIdDesc'));
  return jsonDecode(response.body)['data'];
}