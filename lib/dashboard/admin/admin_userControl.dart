import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/api/userControl_api.dart';

class UserControl extends StatefulWidget {
  const UserControl({Key? key}) : super(key: key);

  @override
  State<UserControl> createState() => _UserControlState();
}

class _UserControlState extends State<UserControl> {
  void apiService(BuildContext context) {
    FutureBuilder<List<dynamic>>(
        future: getUserControl(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError ||
              snapshot.data == null ||
              snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          return snapshot.data;
        });
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 10, 116, 255).withAlpha(60),
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                  offset: const Offset(0.0, 3.0))
            ]),
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.15,
              child: Center(
                child: Text(
                  'Data User',
                  style: GoogleFonts.poppins(
                      height: 1.5,
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent[200]),
                ),
              ),
            ),
            Container(
              height: screenSize.height * 0.6,
              child: ListView(
                controller: ScrollController(),
                children: [
                  FutureBuilder<List<dynamic>>(
                      future: getUserControl(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasError ||
                            snapshot.data == null ||
                            snapshot.connectionState ==
                                ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        }
                        return DataTable(
                            decoration:
                            const BoxDecoration(color: Colors.white),
                            columnSpacing: 55,
                            columns: const [
                              DataColumn(
                                  label: Text(
                                    "ID",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )),
                              DataColumn(
                                  label: Text(
                                    "Nama Rumah Sakit",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )),
                              // DataColumn(label: Text("Telp Rumah Sakit")),
                              DataColumn(
                                  label: Text(
                                    "Alamat Rumah Sakit",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )),
                              // DataColumn(label: Text("Nama PIC")),
                              // DataColumn(label: Text("Telp PIC")),
                              // DataColumn(label: Text("Email PIC")),
                              DataColumn(
                                  label: Text(
                                    "STATUS",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )),
                              DataColumn(
                                  label: Text(
                                    "ACTION",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ))
                            ],
                            rows: List.generate(snapshot.data.length, (index) {
                              var pgm = snapshot.data[index];

                              bool _isEditingText = false;

                              final nameRSController = TextEditingController()
                                ..text = pgm['namaRs'].toString();
                              final phoneRSController = TextEditingController(
                                  text: pgm['noRs'].toString());
                              final addressRSController = TextEditingController(
                                  text: pgm['alamatRs'].toString());
                              final namePICController = TextEditingController(
                                  text: pgm['namaPic'].toString());
                              final phonePICController = TextEditingController(
                                  text: pgm['noPic'].toString());
                              final emailPICController = TextEditingController(
                                  text: pgm['emailPic'].toString());
                              final passwordController = TextEditingController(
                                  text: pgm['password'].toString());
                              final statusUserController =
                              TextEditingController(
                                  text: pgm['statusUser'].toString());

                              void viewUser(BuildContext context) {
                                var screenSize = MediaQuery.of(context).size;
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      // var pgm = snapshot.data;
                                      // print(pgm);

                                      // if (snapshot.hasError ||
                                      //     snapshot.data == null ||
                                      //     snapshot.connectionState == ConnectionState.waiting) {
                                      //   return const CircularProgressIndicator();
                                      // }
                                      return AlertDialog(
                                        content: Form(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: screenSize.width * 0.045,
                                                  top: screenSize.height * 0.01),
                                              width: screenSize.width * 0.50,
                                              height: screenSize.height * 0.55,
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Spacer(),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: screenSize.width *
                                                            0.15),
                                                    height: screenSize.width * 0.03,
                                                    child: Image.asset(
                                                        "assets/logo/medapp-logo.png"),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                  Icons
                                                                      .drive_file_rename_outline,
                                                                  color: Colors
                                                                      .grey[500],
                                                                  size: screenSize
                                                                      .width *
                                                                      0.01),
                                                              const SizedBox(
                                                                  width: 10),
                                                              const Text(
                                                                  "Nama Rumah Sakit",
                                                                  style: TextStyle(
                                                                      fontSize: 13))
                                                            ],
                                                          ),
                                                          const SizedBox(height: 5),
                                                          Row(
                                                            children: [
                                                              SizedBox(
                                                                height: 60,
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  autofocus: true,
                                                                  controller:
                                                                  nameRSController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  decoration: InputDecoration(
                                                                      labelText:
                                                                      "Nama Rumah Sakit",
                                                                      labelStyle:
                                                                      TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      border: OutlineInputBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0))),
                                                                  readOnly: true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Nama Rumah Sakit tidak boleh kosong";
                                                                    } else {
                                                                      return null;
                                                                    }
                                                                  },
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      const SizedBox(width: 30),
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============nama pic=============
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .drive_file_rename_outline,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "Nama PIC",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  namePICController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Nama PIC",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      border:
                                                                      OutlineInputBorder(
                                                                        borderRadius:
                                                                        BorderRadius.circular(5.0),
                                                                      )),
                                                                  readOnly: true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
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
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============alamat rs==========
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .add_home_work_sharp,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "Alamat Rumah Sakit",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  addressRSController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  readOnly: true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Nomor Alamat Rumah Sakit tidak boleh kosong";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Nomor Alamat Rumah Sakit",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      hintStyle:
                                                                      const TextStyle(),
                                                                      border:
                                                                      OutlineInputBorder(
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
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============email pic==========
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .email_outlined,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "Email PIC",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  emailPICController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  readOnly: true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Email PIC tidak boleh kosong";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Email PIC",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      hintStyle:
                                                                      const TextStyle(),
                                                                      border:
                                                                      OutlineInputBorder(
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
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============telepon rs==========
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons.phone_android,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "No Telepon Rumah Sakit",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  phoneRSController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  readOnly: true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Nomor Telepon Rumah Sakit tidak boleh kosong";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Nomor Telepon Rumah Sakit",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      hintStyle:
                                                                      const TextStyle(),
                                                                      border:
                                                                      OutlineInputBorder(
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
                                                      const SizedBox(
                                                        width: 30,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============telepon pic==========
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons.phone_android,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "No Telepon PIC",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  phonePICController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Nomor Telepon PIC tidak boleh kosong";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Nomor Telepon PIC",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      hintStyle:
                                                                      const TextStyle(),
                                                                      border:
                                                                      OutlineInputBorder(
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )),
                                        actions: [
                                          MaterialButton(
                                              child: Text("OK"),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              })
                                        ],
                                      );
                                    });
                              }

                              void editUser(BuildContext context) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: Form(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: screenSize.width * 0.045,
                                                  top: screenSize.height * 0.01),
                                              width: screenSize.width * 0.50,
                                              height: screenSize.height * 0.55,
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Spacer(),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: screenSize.width *
                                                            0.15),
                                                    height: screenSize.width * 0.03,
                                                    child: Image.asset(
                                                        "assets/logo/medapp-logo.png"),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                  Icons
                                                                      .drive_file_rename_outline,
                                                                  color: Colors
                                                                      .grey[500],
                                                                  size: screenSize
                                                                      .width *
                                                                      0.01),
                                                              const SizedBox(
                                                                  width: 10),
                                                              const Text(
                                                                  "Nama Rumah Sakit",
                                                                  style: TextStyle(
                                                                      fontSize: 13))
                                                            ],
                                                          ),
                                                          const SizedBox(height: 5),
                                                          Row(
                                                            children: [
                                                              SizedBox(
                                                                height: 60,
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  nameRSController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  decoration: InputDecoration(
                                                                      labelText:
                                                                      "Nama Rumah Sakit",
                                                                      labelStyle:
                                                                      TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      border: OutlineInputBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0))),
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Nama Rumah Sakit tidak boleh kosong";
                                                                    } else {
                                                                      return null;
                                                                    }
                                                                  },
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      const SizedBox(width: 30),
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============nama pic=============
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .drive_file_rename_outline,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "Nama PIC",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  namePICController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Nama PIC",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      border:
                                                                      OutlineInputBorder(
                                                                        borderRadius:
                                                                        BorderRadius.circular(5.0),
                                                                      )),
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
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
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============alamat rs==========
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .add_home_work_sharp,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "Alamat Rumah Sakit",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  addressRSController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Nomor Alamat Rumah Sakit tidak boleh kosong";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Nomor Alamat Rumah Sakit",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      hintStyle:
                                                                      const TextStyle(),
                                                                      border:
                                                                      OutlineInputBorder(
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
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============email pic==========
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .email_outlined,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "Email PIC",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  emailPICController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Email PIC tidak boleh kosong";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Email PIC",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      hintStyle:
                                                                      const TextStyle(),
                                                                      border:
                                                                      OutlineInputBorder(
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
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============telepon rs==========
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons.phone_android,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "No Telepon Rumah Sakit",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  phoneRSController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Nomor Telepon Rumah Sakit tidak boleh kosong";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Nomor Telepon Rumah Sakit",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      hintStyle:
                                                                      const TextStyle(),
                                                                      border:
                                                                      OutlineInputBorder(
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
                                                      const SizedBox(
                                                        width: 30,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          // ===============telepon pic==========
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons.phone_android,
                                                                color: Colors
                                                                    .grey[500],
                                                                size: screenSize
                                                                    .width *
                                                                    0.01,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                "No Telepon PIC",
                                                                style: TextStyle(
                                                                    fontSize: 13),
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
                                                                width: screenSize
                                                                    .width *
                                                                    0.2,
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  phonePICController,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Nomor Telepon PIC tidak boleh kosong";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                      "Nomor Telepon PIC",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                          13),
                                                                      hintStyle:
                                                                      const TextStyle(),
                                                                      border:
                                                                      OutlineInputBorder(
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )),
                                        actions: <Widget>[
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                editUserControl(
                                                    pgm['idUser'],
                                                    nameRSController
                                                        .value.text,
                                                    phoneRSController
                                                        .value.text,
                                                    addressRSController
                                                        .value.text,
                                                    namePICController
                                                        .value.text,
                                                    phonePICController
                                                        .value.text,
                                                    emailPICController
                                                        .value.text,
                                                    pgm['password'],
                                                    pgm['statusUser'])
                                                    .then((isSuccess) {
                                                  if (isSuccess) {
                                                    setState(() {});
                                                    ScaffoldMessenger.of(
                                                        this.context)
                                                        .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                "Update data success")));
                                                  }
                                                });
                                              },
                                              child: const Text("SAVE")),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("CANCEL"))
                                        ],
                                      );
                                    });
                              }

                              void deleteUser(BuildContext context) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Warning"),
                                        content: Text(
                                            "Are you sure want to delete data ${pgm['idUser']} ?"),
                                        actions: <Widget>[
                                          TextButton(
                                            child: const Text("Yes"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              deleteUserControl(pgm['idUser'])
                                                  .then((isSuccess) {
                                                if (isSuccess) {
                                                  setState(() {});
                                                  ScaffoldMessenger.of(
                                                      this.context)
                                                      .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          "Delete data success")));
                                                } else {
                                                  ScaffoldMessenger.of(
                                                      this.context)
                                                      .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          "Delete data failed")));
                                                }
                                              });
                                            },
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("No"))
                                        ],
                                      );
                                    });
                              }

                              return DataRow(cells: [
                                DataCell(Text(pgm['idUser'].toString())),
                                DataCell(Text(pgm['namaRs'].toString())),
                                // DataCell(Text(pgm['noRs'].toString())),
                                DataCell(Text(pgm['alamatRs'].toString())),
                                // DataCell(Text(pgm['namaPic'].toString())),
                                // DataCell(Text(pgm['noPic'].toString())),
                                // DataCell(Text(pgm['emailPic'].toString())),
                                DataCell(Text(pgm['statusUser'].toString())),
                                DataCell(PopupMenuButton(
                                  icon: Icon(Icons.more_vert_outlined),
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                        child: Text("Edit"), value: 1),
                                    PopupMenuItem(
                                        child: Text("Delete"), value: 2),
                                    PopupMenuItem(child: Text("View"), value: 3)
                                  ],
                                  onSelected: (value) {
                                    if (value == 1) {
                                      print("you choose Edit...");
                                      editUser(context);
                                    } else if (value == 2) {
                                      print("you choose Delete...");
                                      deleteUser(context);
                                    } else if (value == 3) {
                                      print("you choose View...");
                                      viewUser(context);
                                    }
                                  },
                                ))
                              ]);
                            }).toList());
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
