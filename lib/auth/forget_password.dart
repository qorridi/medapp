import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medapp_eksad/widget/button_color.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/medapp_image2.jpg'),
                  fit: BoxFit.fill)),
        ),
        Padding(
          padding: const EdgeInsets.all(21.0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Icon(Icons.arrow_back)),
        ),
        Center(
            child: AlertDialog(
          title: Text('Find your account'),
          content: Form(
            key: formKey,
            child: TextFormField(
              textAlign: TextAlign.start,
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Enter your email address",
                hintStyle: const TextStyle(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
              // onChanged: (value) => email = value,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'dashboard');
              },
              child: const Text('Send'),

              // onPressed: () async {
              //   if (_formKey.currentState!.validate()) {
              //     final response = await SendEmail(
              //         nameController.value.text,
              //         phoneController.value.text,
              //         emailController.value.text,
              //         messageController.value.text);
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       response == 200
              //           ? const SnackBar(
              //               content: Text('Message Sent!'),
              //               backgroundColor: Colors.green)
              //           : const SnackBar(
              //               content: Text('Failed to send message!'),
              //               backgroundColor: Colors.red),
              //     );

              //     nameController.clear();
              //     phoneController.clear();
              //     emailController.clear();
              //     messageController.clear();
              //   }
              // },

              // child: const Text('Send'),
            ),
          ],
        )),
      ],
    );
  }
}

// Future SendEmail(
//     String name, String phone, String email, String message) async {
//   final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
//   const serviceId = 'service_wava70j';
//   const templateId = 'template_koc73cj';
//   const userId = 'h4BmDnyWlm3OziBDx';
//   final response = await http.post(url,
//       headers: {
//         'Content-Type': 'application/json'
//       }, //This line makes sure it works for all platforms.
//       body: json.encode({
//         'service_id': serviceId,
//         'template_id': templateId,
//         'user_id': userId,
//         'template_params': {
//           'from_name': name,
//           'from_phone': phone,
//           'to_email': email,
//           'message': message
//         }
//       }));
//   return response.statusCode;
// }