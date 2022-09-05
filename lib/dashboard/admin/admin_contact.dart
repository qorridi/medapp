import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Dashboard4 extends StatefulWidget {
  const Dashboard4({Key? key}) : super(key: key);

  @override
  State<Dashboard4> createState() => _Dashboard4State();
}

class MessageUser {
  int id;
  String name;
  String email;
  String message;
  String number;

  MessageUser(
      this.id,
      this.name,
      this.email,
      this.message,
      this.number
      );
}

class _Dashboard4State extends State<Dashboard4> {
  List<MessageUser> ListMessage = <MessageUser>[
    MessageUser(1, "Jay", 'email', 'message', 'number'),
    MessageUser(2, 'nama', 'email', 'message', 'nomer'),
    MessageUser(1, "Jay", 'email', 'message', 'number'),
    MessageUser(2, 'nama', 'email', 'message', 'nomer'),MessageUser(1, "Jay", 'email', 'message', 'number'),
    MessageUser(2, 'nama', 'email', 'message', 'nomer'),MessageUser(1, "Jay", 'email', 'message', 'number'),
    MessageUser(2, 'nama', 'email', 'message', 'nomer'),
  ];

  @override
  void initState() {
    super.initState();
  }

  refreshList() {
    setState(() {
      ListMessage=ListMessage;
    });
  }




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
          children: [
            Container(
              height: screenSize.height * 0.15,

              child: Center(
                child: Text('Data Messages from User',style: GoogleFonts.poppins(
                    height: 1.5,
                    fontSize: 31,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent[200]),),
              ),
            ),
            Container(
             // height: screenSize.height*0.63,
              width: screenSize.width*0.95,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
              //color: Colors.white,
              child: PaginatedDataTable(
                  rowsPerPage:5,
                  // header :Text("Data Message User"),
                  columnSpacing: 150,
                  columns: [
                    DataColumn(label: Text("ID"),),
                    DataColumn(label: Text("Name"),),
                    DataColumn(label: Text("Email"),),
                    DataColumn(label: Text("Message"),),
                    DataColumn(label: Text("Number"),),
                  ],
                  source: UserDataTableSource(userData: ListMessage)),
            )
          ],
        ),
      ),
    );

  }
}

class UserDataTableSource extends DataTableSource {
  UserDataTableSource({
    required List<MessageUser> userData,
  })
      : _userData = userData,
        assert(userData != null);

  final List<MessageUser> _userData;

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
        DataCell(Text('${_user.id}')),
        DataCell(Text('${_user.name}')),
        DataCell(Text('${_user.email}')),
        DataCell(Text('${_user.message}')),
        DataCell(Text('${_user.number}')),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _userData.length;

  @override
  int get selectedRowCount => 0;


  void sort<T>(Comparable<T> Function(MessageUser d) getField, bool ascending) {
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
