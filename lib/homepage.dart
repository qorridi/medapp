import 'package:flutter/material.dart';
import 'package:medapp_eksad/appbar/appbar_home.dart';
import 'package:medapp_eksad/screen_small/small_contact/small_contact_us2.dart';
import 'package:medapp_eksad/screen/contact_us/contact_us2.dart';
import 'package:medapp_eksad/screen/footer.dart';
import 'package:medapp_eksad/screen/home/home1.dart';
import 'package:medapp_eksad/screen/home/home2.dart';
import 'package:medapp_eksad/screen/home/home3.dart';
import 'package:medapp_eksad/screen/home/home4.dart';
import 'package:medapp_eksad/screen_small/small_footer.dart';
import 'package:medapp_eksad/screen_small/small_home/small_home1.dart';
import 'package:medapp_eksad/screen_small/small_home/small_home2.dart';
import 'package:medapp_eksad/screen_small/small_home/small_home3.dart';
import 'package:medapp_eksad/screen_small/small_home/small_home4.dart';
import 'package:medapp_eksad/widget/drawer.dart';
import 'package:medapp_eksad/widget/responsive.dart';
import 'package:medapp_eksad/widget/whatsapp.dart';
import 'package:flutter/services.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    setPageTitle('MedApp by Eksad', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: WAChat(),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBarKecil()
          : AppbarHomeLarge(screenSize, context, Colors.blue, Colors.blue,
              Colors.black, Colors.black, Colors.black),
      drawer: const DrawerMedApp(),
      body: ResponsiveWidget.isSmallScreen(context)
          ? ListView(
              children: const [
                SmallHome1(),
                SmallHome2(),
                SmallHome3(),
                SmallHome4(),
                ContactUs2_small(),
                FooterSmall(),
              ],
            )
          : ListView(
              children: [
                const Home1(),
                const Home2(),
                const Home3(),
                const Home4(),
                ContactUs2(),
                const Footer(),
              ],
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
