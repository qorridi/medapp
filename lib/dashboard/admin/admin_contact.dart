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
              height: screenSize.height * 0.65,
              child: ListView(
                controller: ScrollController(),
                children: [
                  FutureBuilder<List<dynamic>>(
                    future: getcontact(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasError ||
                          snapshot.data == null ||
                          snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      }
                      return DataTable(
                        decoration: const BoxDecoration(color: Colors.white),
                        columnSpacing: 105,
                        columns: const [
                          DataColumn(label: Text("ID")),
                          DataColumn(label: Text("Date")),
                          DataColumn(label: Text("Name")),
                          DataColumn(label: Text("Email")),
                          DataColumn(label: Text("Message")),
                          DataColumn(label: Text("Number")),
                        ],
                        rows: List.generate(
                          snapshot.data.length,
                          (index) {
                            var pgm = snapshot.data[index];
                            return DataRow(
                              cells: [
                                DataCell(
                                  Text(pgm['idContact'].toString()),
                                ),
                                DataCell(
                                  Text(pgm['namaContact']),
                                ),
                                DataCell(
                                  Text(pgm['dateContact']),
                                ),
                                DataCell(
                                  Text(pgm['emailContact']),
                                ),
                                DataCell(
                                  Text(pgm['messageContact']),
                                ),
                                DataCell(
                                  Text(pgm['noHp']),
                                ),
                                // DataCell(
                                //   Row(
                                //     children: [
                                //       TextButton(
                                //         style: TextButton.styleFrom(
                                //           padding: const EdgeInsets.all(16.0),
                                //           primary: Colors.white,
                                //           backgroundColor: const Color.fromARGB(
                                //               255, 245, 27, 27),
                                //           textStyle:
                                //               const TextStyle(fontSize: 15),
                                //         ),
                                //         onPressed: () {
                                //           showDialog(
                                //             context: context,
                                //             builder: (context) {
                                //               return AlertDialog(
                                //                 title: const Text("Warning"),
                                //                 content: Text(
                                //                     "Are you sure want to delete data page ${pgm['title']}?"),
                                //                 actions: <Widget>[
                                //                   TextButton(
                                //                     child: const Text("Yes"),
                                //                     onPressed: () {
                                //                       Navigator.pop(context);
                                //                       deletePage(pgm['idpage'])
                                //                           .then((isSuccess) {
                                //                         if (isSuccess) {
                                //                           setState(() {});
                                //                           Scaffold.of(
                                //                                   this.context)
                                //                               .showSnackBar(
                                //                                   const SnackBar(
                                //                                       content: Text(
                                //                                           "Delete data success")));
                                //                         } else {
                                //                           Scaffold.of(
                                //                                   this.context)
                                //                               .showSnackBar(
                                //                                   const SnackBar(
                                //                                       content: Text(
                                //                                           "Delete data failed")));
                                //                         }
                                //                       });
                                //                     },
                                //                   ),
                                //                   TextButton(
                                //                     child: const Text("No"),
                                //                     onPressed: () {
                                //                       Navigator.pop(context);
                                //                     },
                                //                   ),
                                //                 ],
                                //               );
                                //             },
                                //           );
                                //         },
                                //         child: const Text("Delete"),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
