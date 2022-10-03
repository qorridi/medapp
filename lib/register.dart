
import 'package:flutter/material.dart';
import 'package:medapp_eksad/api/user_api.dart';
import 'package:medapp_eksad/firebase/firebase_auth_methods.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  //static String routeName = '/register';
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();

  final nameRSController = TextEditingController();
  final phoneRSController = TextEditingController();
  final addressRSController = TextEditingController();
  final namePICController = TextEditingController();
  final phonePICController = TextEditingController();
  final addressPICController = TextEditingController();
  final emailPICController = TextEditingController();
  final passwordController = TextEditingController();

  void signUpUser() async {
    signUp(
        nameRSController.value.text,
        phoneRSController.value.text,
        addressRSController.value.text,
        namePICController.value.text,
        phonePICController.value.text,
        emailPICController.value.text,
        passwordController.value.text);
    context.read<FirebaseAuthMethods>().signUpWithEmail(
      nameRS: nameRSController.text,
      phoneRS: phoneRSController.text,
      addressRS: addressRSController.text,
      namePIC: namePICController.text,
      phonePIC: phonePICController.text,
      //addressPIC: addressPICController.text,
      email: emailPICController.text,
      password: passwordController.text,
      context: context,
    );
   // signUp( nameRSController.value.text,
   //     phoneRSController.value.text,
   //     addressRSController.value.text,
   //     namePICController.value.text,
   //     phonePICController.value.text,
   //     emailPICController.value.text,
   //     passwordController.value.text);
  }

  @override
  Widget build(BuildContext context) {
    var screenize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenize.height,
        width: screenize.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/bg-medapp.png"),
          fit: BoxFit.fill,
        )),
        padding: EdgeInsets.only(
            left: screenize.width * 0.13,
            top: screenize.height * 0.05,
            bottom: screenize.height * 0.05),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenize.height * 0.15),
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
                width: screenize.width * 0.50,
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
                      color:
                      const Color.fromARGB(255, 10, 116, 255).withAlpha(60),
                      blurRadius: 15.0,
                      spreadRadius: 20.0,
                      offset: const Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: screenize.width * 0.045,
                        top: screenize.height * 0.01),
                    width: screenize.width * 0.50,
                    height: screenize.height * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Spacer(),
                        Container(
                          padding:
                          EdgeInsets.only(left: screenize.width * 0.15),
                          height: screenize.width * 0.03,
                          child: Image.asset("assets/logo/medapp-logo.png"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ===============nama rs=============
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
                                    const Text(
                                      "Nama Rumah Sakit",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: screenize.width * 0.2,
                                      child: TextFormField(
                                        controller: nameRSController,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                            labelText: "Nama Rumah Sakit",
                                            labelStyle: TextStyle(fontSize: 13),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(5.0),
                                            )),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Nama Rumah Sakit tidak boleh kosong";
                                          }
                                          return null;
                                        },
                                      ),
                                    )
                                  ],
                                ),
                                // ===============akhir nama rs=============
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ===============telepon rs==========
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
                                    const Text(
                                      "No Telepon Rumah Sakit",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: screenize.width * 0.2,
                                      child: TextFormField(
                                        controller: phoneRSController,
                                        textAlign: TextAlign.start,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Nomor Telepon Rumah Sakit tidak boleh kosong";
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText:
                                            "Nomor Telepon Rumah Sakit",
                                            labelStyle: TextStyle(fontSize: 13),
                                            hintStyle: const TextStyle(),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(5.0),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                // ===============akhir telepon rs==========
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ===============alamat rs==========
                                Row(
                                  children: [
                                    Icon(
                                      Icons.add_home_work_sharp,
                                      color: Colors.grey[500],
                                      size: screenize.width * 0.01,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Alamat Rumah Sakit",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: screenize.width * 0.2,
                                      child: TextFormField(
                                        controller: addressRSController,
                                        textAlign: TextAlign.start,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Nomor Alamat Rumah Sakit tidak boleh kosong";
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText:
                                            "Nomor Alamat Rumah Sakit",
                                            labelStyle: TextStyle(fontSize: 13),
                                            hintStyle: const TextStyle(),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(5.0),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                // ===============akhir alamat rs==========
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ===============nama pic=============
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
                                    const Text(
                                      "Nama PIC",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: screenize.width * 0.2,
                                      child: TextFormField(
                                        controller: namePICController,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                            labelText: "Nama PIC",
                                            labelStyle: TextStyle(fontSize: 13),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(5.0),
                                            )),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Nama PIC tidak boleh kosong";
                                          }
                                          return null;
                                        },
                                      ),
                                    )
                                  ],
                                ),
                                // ===============akhir nama pic=============
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ===============telepon pic==========
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
                                    const Text(
                                      "No Telepon PIC",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: screenize.width * 0.2,
                                      child: TextFormField(
                                        controller: phonePICController,
                                        textAlign: TextAlign.start,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Nomor Telepon PIC tidak boleh kosong";
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText: "Nomor Telepon PIC",
                                            labelStyle: TextStyle(fontSize: 13),
                                            hintStyle: const TextStyle(),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(5.0),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                // ===============akhir telepon pic==========
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ===============email pic==========
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
                                    const Text(
                                      "Email PIC",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: screenize.width * 0.2,
                                      child: TextFormField(
                                        controller: emailPICController,
                                        textAlign: TextAlign.start,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Email PIC tidak boleh kosong";
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText: "Email PIC",
                                            labelStyle: TextStyle(fontSize: 13),
                                            hintStyle: const TextStyle(),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(5.0),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                // ===============akhir email pic==========
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ===============password==========
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
                                    const Text(
                                      "Password",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 60,
                                  width: screenize.width * 0.2,
                                  child: TextFormField(
                                    controller: passwordController,
                                    textAlign: TextAlign.start,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Password tidak boleh kosong";
                                      }
                                      return null;
                                    },
                                    obscureText: _isObscure,
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      labelStyle: TextStyle(fontSize: 13),
                                      suffixIcon: IconButton(
                                        icon: Icon(_isObscure
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                        onPressed: () {
                                          setState(() {
                                            _isObscure = !_isObscure;
                                          });
                                        },
                                      ),
                                      hintStyle: const TextStyle(),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(5.0)),
                                    ),
                                  ),
                                ),
                                // ===============akhir password==========
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     // ===============password==========
                        //     Row(
                        //       children: [
                        //         Icon(
                        //           Icons.vpn_lock,
                        //           color: Colors.grey[500],
                        //           size: screenize.width * 0.01,
                        //         ),
                        //         const SizedBox(
                        //           width: 10,
                        //         ),
                        //         const Text(
                        //           "Latitude & Longitude PIC",
                        //           style: TextStyle(fontSize: 13),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(
                        //       height: 5,
                        //     ),
                        //     Container(
                        //         height: 50,
                        //         width: screenize.width * 0.42,
                        //         decoration: BoxDecoration(
                        //           border: Border.all(color: Colors.grey),
                        //           borderRadius: BorderRadius.circular(10),
                        //         ),
                        //         child: Row(
                        //           mainAxisAlignment:
                        //           MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Text(''),
                        //             Container(
                        //               height: 51,
                        //               child: ClipRRect(
                        //                   borderRadius:
                        //                   BorderRadius.circular(10),
                        //                   child: ElevatedButton(
                        //                       onPressed: () {},
                        //                       child: Text('Set'))),
                        //             ),
                        //           ],
                        //         )),
                        //     // ===============akhir password==========
                        //   ],
                        // ),
                        const Spacer(
                          flex: 4,
                        ),
                        Container(
                          padding:
                          EdgeInsets.only(left: screenize.width * 0.10),
                          height: screenize.width * 0.03,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: screenize.width * 0.09,
                                child: ElevatedButton(
                                  onPressed: () {
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
                                  onPressed: signUpUser,

                                  child: const Text("REGISTER"),
                                ),
                              )
                            ],
                          ),
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

