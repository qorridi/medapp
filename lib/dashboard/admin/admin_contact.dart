import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/api/contact_api.dart';

class Dashboard4 extends StatefulWidget {
  const Dashboard4({Key? key}) : super(key: key);

  @override
  State<Dashboard4> createState() => _Dashboard4State();
}

class _Dashboard4State extends State<Dashboard4> {
  final formKey = GlobalKey<FormState>();

  int id = 0;
  String name = '';
  String email = '';
  String massage = '';
  String number = '';

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
                offset: const Offset(
                  0.0,
                  3.0,
                ),
              ),
            ]),
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.15,
              child: Center(
                child: Text(
                  'Data Messages from User',
                  style: GoogleFonts.poppins(
                      height: 1.5,
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent[200]),
                ),
              ),
            ),
            // Container(
            //   height: screenSize.height * 0.63,
            //   width: screenSize.width * 0.95,
            //   decoration:
            //       BoxDecoration(borderRadius: BorderRadius.circular(40)),
            //   //color: Colors.white,
            //   child: PaginatedDataTable(
            //     rowsPerPage: 5,
            //     // header :Text("Data Message User"),
            //     columnSpacing: 150,
            //     columns: [
            //       DataColumn(label: Text("ID")),
            //       DataColumn(label: Text("Name")),
            //       DataColumn(label: Text("Email")),
            //       DataColumn(label: Text("Message")),
            //       DataColumn(label: Text("Number")),
            //     ], source: ,
            //   ),
            // ),

            Container(
              height: screenSize.height * 0.6,
              child: ListView(
                controller: ScrollController(),
                children: [
                  FutureBuilder<List<dynamic>>(
                      future: getcontact(),
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
                                "Date",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              DataColumn(
                                  label: Text(
                                "Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              // DataColumn(label: Text("Telp Rumah Sakit")),
                              DataColumn(
                                  label: Text(
                                "Number",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              // DataColumn(label: Text("Nama PIC")),
                              // DataColumn(label: Text("Telp PIC")),
                              // DataColumn(label: Text("Email PIC")),
                              DataColumn(
                                  label: Text(
                                "Email",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              DataColumn(
                                  label: Text(
                                "Action",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                            ],
                            rows: List.generate(snapshot.data.length, (index) {
                              var pgm = snapshot.data[index];

                              final dateController = TextEditingController()
                                ..text = pgm['dateContact'].toString();
                              final nameController = TextEditingController(
                                  text: pgm['namaContact'].toString());
                              final nohpController = TextEditingController(
                                  text: pgm['noHp'].toString());
                              final emailController = TextEditingController(
                                  text: pgm['emailContact'].toString());
                              final messageController = TextEditingController(
                                  text: pgm['messageContact'].toString());

                              void viewUser(BuildContext context) {
                                var screenSize = MediaQuery.of(context).size;
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: Form(
                                            child: Container(
                                          padding: EdgeInsets.only(
                                              left: screenSize.width * 0.040,
                                              top: screenSize.height * 0.01),
                                          width: screenSize.width * 0.55,
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
                                                          const Text("Nama",
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
                                                                  nameController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration: InputDecoration(
                                                                  labelText:
                                                                      "Nama",
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
                                                                  return "Nama";
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
                                                                .calendar_month,
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
                                                            "Date",
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
                                                                  dateController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "date",
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
                                                                  return "Date";
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
                                                            Icons.email,
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
                                                            "Email",
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
                                                                  emailController,
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
                                                                  return "Email";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Email",
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
                                                            "No HP",
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
                                                                  nohpController,
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
                                                                  return "No Hp";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "No Hp",
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
                                                      // ===============email pic==========
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.message,
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
                                                            "Message",
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
                                                          Container(
                                                            height: 90,
                                                            width: screenSize
                                                                    .width *
                                                                0.42,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                TextFormField(
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .multiline,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .newline,
                                                                  minLines: 1,
                                                                  maxLines: 5,
                                                                  controller:
                                                                      messageController,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  readOnly:
                                                                      true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                            null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return "Message";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  decoration:
                                                                      InputDecoration(
                                                                          labelText:
                                                                              "Message",
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
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      // ===============akhir email pic==========
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

                              return DataRow(cells: [
                                DataCell(Text(pgm['dateContact'].toString())),
                                DataCell(Text(pgm['namaContact'].toString())),
                                DataCell(Text(pgm['noHp'].toString())),
                                DataCell(Text(pgm['emailContact'].toString())),
                                DataCell(PopupMenuButton(
                                  icon: Icon(Icons.more_vert_outlined),
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                        child: Text("View"), value: 1),
                                    PopupMenuItem(
                                        child: Text("Delete"), value: 2),
                                  ],
                                  onSelected: (value) {
                                    if (value == 1) {
                                      print("you choose View...");
                                      viewUser(context);
                                    } else if (value == 2) {
                                      print("you choose Delete...");
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text("Warning"),
                                              content: Text(
                                                  "Are you sure want to delete data page ${pgm['idContact']}?"),
                                              actions: <Widget>[
                                                TextButton(
                                                  child: const Text("Yes"),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    deleteContact(
                                                            pgm['idContact'])
                                                        .then(
                                                      (isSuccess) {
                                                        if (isSuccess) {
                                                          setState(() {});
                                                          ScaffoldMessenger.of(
                                                                  this.context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                  "Delete data success"),
                                                            ),
                                                          );
                                                        } else {
                                                          ScaffoldMessenger.of(
                                                                  this.context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                  "Delete data failed"),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                    );
                                                  },
                                                ),
                                                TextButton(
                                                  child: const Text("No"),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
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
