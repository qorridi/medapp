import 'package:flutter/material.dart';
import 'package:medapp_eksad/api/user_api.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final usernameController = TextEditingController();
  final pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenize.height,
        width: screenize.width,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-medapp.png"),
            fit: BoxFit.fill,
          )
        ),
        padding: EdgeInsets.only(
          left: screenize.width * 0.13,
          top: screenize.height * 0.05,
          bottom: screenize.height * 0.05
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenize.height*0.15),
              // child: Container(
              //   decoration: BoxDecoration(
              //     color: const Color.fromARGB(255, 10, 116, 255),
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   width: screenize.width * 0.36,
              //   height: screenize.height * 0.7,
              //   child: Image.asset(
              //     "assets/logo/logo-eksad.png",
              //   ),
              // ),
              child: Image.asset(
                  "assets/logo/logo-eksad.png",
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: screenize.width * 0.35,
                ),
              child: Container(
                width: screenize.width * 0.30,
                height: screenize.height * 1,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 5,
                    color: const Color.fromARGB(255, 10, 116, 255),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 10, 116, 255).withAlpha(60),
                      blurRadius: 15.0,
                      spreadRadius: 20.0,
                      offset: const Offset(
                        0.0,
                        3.0,
                      ),
                    ),],
                ),
                child: Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: screenize.width * 0.045,
                      top: screenize.height * 0.01
                    ),
                    width: screenize.width * 0.36,
                    height: screenize.height * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.only(
                            left: screenize.width * 0.05
                          ),
                          height: screenize.width * 0.03,
                          child: Image.asset("assets/logo/medapp-logo.png"),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(
                              Icons.drive_file_rename_outline,
                              color: Colors.grey[500],
                              size: screenize.width * 0.01,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Nama",
                              style: TextStyle(
                                fontSize: 13
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(
                              height: 60,
                              width: screenize.width * 0.2,
                              child: TextFormField(
                                controller: nameController,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  labelText: "Nama Lengkap",
                                  labelStyle: TextStyle(
                                    fontSize: 13
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  )
                                ),
                                validator: (value){
                                  if (value == null || value.isEmpty){
                                    return "Nama tidak boleh kosong";
                                  }
                                  return null;
                                },
                              ),
                            )
                          ],
                        ),

                        const SizedBox(height: 5  ,),
                        Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.grey[500],
                              size: screenize.width * 0.01,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Email",
                              style: TextStyle(
                                fontSize: 13
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(
                              height: 60,
                              width: screenize.width * 0.2,
                              child: TextFormField(
                                controller: emailController,
                                textAlign: TextAlign.start,
                                validator: (value){
                                  if (value == null || value.isEmpty){
                                    return "Email tidak boleh kosong";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    labelText: "Email Valid",
                                    labelStyle: TextStyle(
                                      fontSize:13
                                    ),
                                    hintStyle: const TextStyle(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    )
                                ),
                              ),
                            )
                          ],
                        ),

                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android,
                              color: Colors.grey[500],
                              size: screenize.width * 0.01,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("No Hp",
                              style: TextStyle(
                                fontSize: 13
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(
                              height: 60,
                              width: screenize.width * 0.2,
                              child: TextFormField(
                                controller: phoneController,
                                textAlign: TextAlign.start,
                                validator: (value){
                                  if (value == null || value.isEmpty){
                                    return "Nomor handphone tidak boleh kosong";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    labelText: "Nomor Handphone",
                                    labelStyle: TextStyle(
                                      fontSize: 13
                                    ),
                                    hintStyle: const TextStyle(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(
                              Icons.account_circle_sharp,
                              color: Colors.grey[500],
                              size: screenize.width * 0.01,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Username",
                              style: TextStyle(
                                fontSize: 13
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(
                              height: 60,
                              width: screenize.width * 0.2,
                              child: TextFormField(
                                controller: usernameController,
                                textAlign: TextAlign.start,
                                validator: (value){
                                  if (value == null || value.isEmpty){
                                    return "Username tidak boleh kosong";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    labelText: "Username",
                                    labelStyle: TextStyle(
                                      fontSize: 13
                                    ),
                                    hintStyle: const TextStyle(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    )
                                ),
                              ),
                            )
                          ],
                        ),

                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(
                              Icons.vpn_key_off_sharp,
                              color: Colors.grey[500],
                              size: screenize.width * 0.01,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Password",
                              style: TextStyle(
                                fontSize: 13
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        SizedBox(
                          height: 60,
                          width: screenize.width * 0.2,
                          child: TextFormField(
                            controller: pwController,
                            textAlign: TextAlign.start,
                            validator: (value){
                              if (value == null || value.isEmpty){
                                return "Nama tidak boleh kosong";
                              }
                              return null;
                            },
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 13
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off
                                ),
                                onPressed: (){
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              hintStyle: const TextStyle(),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 4,
                        ),
                        Row(
                          children: [

                            SizedBox(
                              height: 30,
                              width: screenize.width * 0.09,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: const Text("LOGIN"),
                              ),
                            ),
                            SizedBox(
                              width: screenize.width * 0.02,
                            ),
                            SizedBox(
                              height: 30,
                              width: screenize.width * 0.09,
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()){
                                    final response = await signUp(
                                      nameController.value.text,
                                      emailController.value.text,
                                      phoneController.value.text,
                                      usernameController.value.text,
                                      pwController.value.text);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      response == true
                                            ? const SnackBar(
                                            content: Text("Registrasi berhasil ! cek email untuk validasi"),
                                            backgroundColor: Colors.green,)
                                            : const SnackBar(
                                            content: Text("Registrasi gagal"),
                                            backgroundColor: Colors.red,)
                                    );
                                    print(
                                      nameController.value.text+ emailController.value.text+phoneController.value.text+usernameController.value.text+pwController.value.text
                                    );

                                    nameController.clear();
                                    emailController.clear();
                                    phoneController.clear();
                                    usernameController.clear();
                                    pwController.clear();
                                  }
                                },
                                child: const Text("REGISTER"),
                              ),
                            )
                          ],
                        ),
                        const Spacer(
                          flex: 4,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
