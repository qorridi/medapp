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
        padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.1),
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
                    onTap: (){},
                    leading: Icon(
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
                    onTap: (){},
                    leading: Icon(
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
                    onTap: (){},
                    leading: Icon(
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
                    onTap: (){},
                    leading: Icon(
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
                        color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
          : Container(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Box(
                        wijet: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.download,
                            size: 40,
                          ),
                          label: Text(
                            'Download APK',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Box(
                        wijet: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.tv,
                            size: 40,
                          ),
                          label: Text(
                            'TV Display',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Box(
                        wijet: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.phone_android,
                            size: 40,
                          ),
                          label: Text(
                            'Kiosk',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Box(
                        wijet: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.browser_updated,
                            size: 40,
                          ),
                          label: Text(
                            'Web Admin',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
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
