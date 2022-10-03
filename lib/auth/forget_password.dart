import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:medapp_eksad/firebase/showSnackbar_Alertdialog.dart';
import 'package:medapp_eksad/widget/button_color.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
          title: Text('Reset Password',textAlign: TextAlign.center,),
          content: Container(
            width: screenSize.width*0.25,
            height: screenSize.height*0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Form(
                  key: formKey,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    controller: emailController,
                    textInputAction: TextInputAction.done,
                    //autovalidateMode: AutovalidateMode.onUserInteraction,

                    decoration: InputDecoration(
                      labelText: "Enter your email address",
                      hintStyle: const TextStyle(),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      }
                      return null;
                    },
                    // onChanged: (value) => email = value,
                  ),
                ),
                Container
                  (height: screenSize.height*0.1,
                  child: Text('We will send you an email with'
                    ' a link to reset your password, please enter the email'
                    ' associated with your account above.',style: GoogleFonts.poppins(fontSize: 12),),),
                Container(
                  width: screenSize.width*0.31,
                  height: screenSize.height*0.065,
                  child: ElevatedButton(
                    onPressed: () async {

                      if (formKey.currentState!.validate()) {
                        await resetPassword();
                        return;
                      }

                    },
                    //   resetPassword();
                    //   //Navigator.pushNamed(context, 'dashboard');
                    // },
                    child: const Text('Send'),),
                )
              ],
            ),
          ),

        ),
        ),
      ],
    );
  }
  Future resetPassword()async{
    showDialog(context: context, builder: (context)=> Center(child: CircularProgressIndicator(),));
    try{
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showSnackBar(context, 'Reset Password Sent, Check your email inbox or spam');
      Navigator.of(context).popAndPushNamed('/login');
      
    } on FirebaseAuthException catch (e){
      print(e);
      showSnackBarError(context, e.message!);
      Navigator.of(context).pop();
    }
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