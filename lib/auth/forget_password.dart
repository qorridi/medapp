import 'package:flutter/material.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final formKey = GlobalKey<FormState>();
  String email = '';
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
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/login');
          }, child: Icon(Icons.arrow_back)),
        ),
        Center(
          child:AlertDialog(
                title: Text('Find your account'),
            content: Form(
              key: formKey,
              child: TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  labelText: "Enter your email address",
                  hintStyle: const TextStyle(),
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(5.0)),
                ),
                onChanged: (value) => email = value,
              ),
            ),
            actions: <Widget>[

              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'dashboard');
                },
                child: const Text('Send'),
              ),
            ],
              )
        ),
      ],
    );
  }
}
