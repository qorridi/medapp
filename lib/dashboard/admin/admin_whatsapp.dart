import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/api/wa_api.dart';


class Dashboard3 extends StatefulWidget {
  const Dashboard3({Key? key}) : super(key: key);

  @override
  State<Dashboard3> createState() => _Dashboard3State();
}

class WhatsappNumber {
  String name;
  String number;
  String status;

  WhatsappNumber(
      this.name,
      this.number,
      this.status
      );
}

class _Dashboard3State extends State<Dashboard3> {


  List<WhatsappNumber> ListWhatsapp = <WhatsappNumber>[
    WhatsappNumber("Jay", 'email', 'ACTIVE',),
    WhatsappNumber('Rizky', 'email', 'INACTIVE',),
    WhatsappNumber('Fahrur', 'email', 'INACTIVE',),
  ];

  @override
  void initState() {
    super.initState();
  }

  refreshList() {
    setState(() {
      ListWhatsapp=ListWhatsapp;
    });
  }
  final TextEditingController nameController = TextEditingController();
  final TextEditingController waController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String nameWa = '';
  String whatsapp = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 10, 116, 255)
                      .withAlpha(60),
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                  offset: const Offset(
                    0.0,
                    3.0,
                  ),
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.08),
                child:  ListTile(
                  title: Center(
                    child: Text('WhatsApp Admin Number',
                      style: GoogleFonts.poppins(
                          height: 1.5,
                          fontSize: 31,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent[200]),
                    ),
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 120,
                    child: TextFormField(
                      controller: nameController,

                      //initialValue: '+62',
                      decoration: const InputDecoration(
                        labelText: "Enter a name",
                        hintText: 'Ex: Jaenudin',
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                          BorderSide(width: 1, color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                          BorderSide(width: 1, color: Colors.blue),
                        ),
                      ),
                      onChanged: (value) => nameWa = value,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 48,
                    width: 250,
                    child: TextFormField(
                      controller: waController,
                      //initialValue: '+62',
                      decoration: const InputDecoration(
                        labelText: "Enter a whatsapp number",
                        hintText: 'Ex: 62xxxxxxxxxxx',
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                          BorderSide(width: 1, color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                          BorderSide(width: 1, color: Colors.blue),
                        ),
                      ),
                      onChanged: (value) => whatsapp = value,
                    ),
                  ),
                  SizedBox(width: 15,),
                Container(
                  height : 45,
                  width : 175,
                  child: ElevatedButton(
                    onPressed: (){
                      if(whatsapp.trim().isEmpty){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Number Can\'t Be Empty')),
                        );
                      }else {
                        nameController.clear();
                        waController.clear();
                        saveWa(nameWa, whatsapp).then(
                              (isSuccess) {
                            if (isSuccess) {
                              setState(() {});
                              Scaffold.of(this.context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Input Data success")));
                            } else {
                              Scaffold.of(this.context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Input Data failed!!!")));
                            }
                          },
                        );
                      }


                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent[200],
                      onSurface: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                      ),
                    ),
                    child: Text(
                      "Change Number",
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2
                      ),
                    ),
                  ),
                ),
                ],
              ),
              ),
              Center(
                child: Container(
                  width: screenSize.width*0.75,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: PaginatedDataTable(
                        rowsPerPage:4,
                        // header :Text("Data Message User"),
                        columnSpacing: 170,
                        columns: [
                          DataColumn(label: Text("Name"),),
                          DataColumn(label: Text("Number"),),
                          DataColumn(label: Text("Status"),),
                        ],
                        source: UserDataTableSource(userData: ListWhatsapp)),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}


class UserDataTableSource extends DataTableSource {
  UserDataTableSource({
    required List<WhatsappNumber> userData,
  })
      : _userData = userData,
        assert(userData != null);

  final List<WhatsappNumber> _userData;

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);

    if (index >= _userData.length) {
      return null;
    }
    final _user = _userData[index];

    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text('${_user.name}')),
        DataCell(Text('${_user.number}')),
        DataCell(Text('${_user.status}')),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _userData.length;

  @override
  int get selectedRowCount => 0;


  void sort<T>(Comparable<T> Function(WhatsappNumber d) getField, bool ascending) {
    _userData.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });

    notifyListeners();
  }
}
