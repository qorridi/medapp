import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../appbar/appbar_home.dart';
import '../widget/drawer.dart';
import '../widget/responsive.dart';
import '../widget/whatsapp.dart';
import 'package:provider/provider.dart';
import 'package:medapp_eksad/firebase/firebase_auth_methods.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class DemoUser extends StatefulWidget {
  const DemoUser({Key? key}) : super(key: key);

  @override
  State<DemoUser> createState() => _DemoUserState();
}

class _DemoUserState extends State<DemoUser> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    setPageTitle('Demo', context);
    var screenSize = MediaQuery.of(context).size;
    final user = context.read<FirebaseAuthMethods>().user;
    final String mail = user.email!;

    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: WAChat(),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBarKecil()
          : AppbarHomeLargeUser(screenSize, context, Colors.black, Colors.black,
              Colors.black, Colors.black, Colors.black, Colors.blue),
      drawer: const DrawerMedApp(),
      body: ResponsiveWidget.isSmallScreen(context)
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              width: screenSize.width,
              height: screenSize.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      'Welcome, $mail',
                      style: GoogleFonts.poppins(fontSize: 25),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.download,
                        size: 40,
                      ),
                      title: Text(
                        'Download APK',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.tv,
                        size: 40,
                      ),
                      title: Text(
                        'TV Display',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.phone_android,
                        size: 40,
                      ),
                      title: Text(
                        'Kiosk',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.browser_updated,
                        size: 40,
                      ),
                      title: Text(
                        'Website Admin',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<FirebaseAuthMethods>().signOut(context);
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff1e5ea8),
                      fixedSize: const Size(130, 45),
                      onPrimary: Colors.red,
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              width: screenSize.width,
              height: screenSize.height,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.1,
                    child: Center(
                      child: Text(
                        'Welcome, $mail',
                        style: GoogleFonts.poppins(fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(bottom: 20),
                      width: screenSize.width,
                      height: screenSize.height * 0.75,
                      //color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DemoBox(
                              screenSize: screenSize,
                              namaImage: 'demo1.png',
                              namaButton: 'MOBILE',
                              deskripsiDemo: 'Patient Application'),
                          DemoBox(
                              screenSize: screenSize,
                              namaImage: 'demo2.png',
                              namaButton: 'KIOSK',
                              deskripsiDemo: 'Patient Application'),
                          DemoBox(
                              screenSize: screenSize,
                              namaImage: 'demo3.png',
                              namaButton: 'DISPLAY TV',
                              deskripsiDemo: 'Patient Application'),
                          DemoBox(
                              screenSize: screenSize,
                              namaImage: 'demo4.png',
                              namaButton: 'WEB CONSOLE',
                              deskripsiDemo: 'Patient Application'),
                        ],
                      )),
                ],
              ),
            ),
    );
  }

  AppBar AppBarKecil() {
    return AppBar(
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        icon: const Icon(
          Icons.list_outlined,
          size: 30,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: SizedBox(
        height: 50,
        width: 150,
        child: Image.asset("assets/logo/medapp-logo.png"),
      ),

      // ),
    );
  }
}

class DemoBox extends StatelessWidget {
  const DemoBox(
      {Key? key,
      required this.screenSize,
      required this.namaImage,
      required this.namaButton,
      required this.deskripsiDemo})
      : super(key: key);

  final String namaImage;
  final String namaButton;
  final String deskripsiDemo;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width * 0.2,
      height: screenSize.height,
      //color: Colors.green,
      child: Column(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/$namaImage'),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 12,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              namaButton,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  color: Colors.black),
            ),
          ),
          Text(
            deskripsiDemo,
            style: GoogleFonts.poppins(fontSize: 18),
          )
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({Key? key, required this.wijet}) : super(key: key);
  final Widget wijet;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.grey,
      child: wijet,
    );
  }
}
