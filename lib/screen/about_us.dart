import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/api/setting_api.dart';
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
import 'package:medapp_eksad/widget/Scroll_top.dart';
import 'package:medapp_eksad/widget/drawer.dart';
import 'package:medapp_eksad/widget/responsive.dart';
import 'package:medapp_eksad/widget/whatsapp.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  //   Untuk pake PAGE per index
  PageController controller = PageController();
  void _scrollToIndex2(int index) {
    controller.animateToPage(index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  //   Untuk pake LIST per height container
  ScrollController controller2 = ScrollController();
  void _scrollToIndex(double index) {
    controller2.animateTo(index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    setPageTitle('About Us', context);
    var screenSize = MediaQuery.of(context).size;
    final firebaseUser = context.watch<User?>();
    if (firebaseUser != null) {
      return Scaffold(
        key: _scaffoldKey,
        floatingActionButton: WAChat(),
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBarKecil()
            : AppbarHomeLargeUser(screenSize, context, Colors.black, Colors.blue,
            Colors.black, Colors.black, Colors.black, Colors.black),
        drawer: const DrawerMedApp(),
        body: ResponsiveWidget.isSmallScreen(context)
            ? Stack(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              controller: controller2,
              children: [
                SmallHome1(wijet: Button_scroll_small()),
                SmallHome2(),
                SmallHome3(),
                SmallHome4(),
                ContactUs2_small(),
                FooterSmall(),
              ],
            ),
          ],
        )
            : Stack(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              controller: controller2,
              children: [
                Home1(wijet: Button_scroll()),
                const Home2(),
                const Home3(),
                const Home4(),
                ContactUs2(),
                Footer(),
              ],
            ),
          ],
        ),
      );
    }
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: WAChat(),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBarKecil()
          : AppbarHomeLarge(screenSize, context, Colors.black, Colors.blue,
              Colors.black, Colors.black, Colors.black),
      drawer: const DrawerMedApp(),
      body: ResponsiveWidget.isSmallScreen(context)
          ? Stack(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  controller: controller2,
                  children: [
                    SmallHome1(wijet: Button_scroll_small()),
                    SmallHome2(),
                    SmallHome3(),
                    SmallHome4(),
                    ContactUs2_small(),
                    FooterSmall(),
                  ],
                ),
              ],
            )
          : Stack(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  controller: controller2,
                  children: [
                    Home1(wijet: Button_scroll()),
                    const Home2(),
                    const Home3(),
                    const Home4(),
                    ContactUs2(),
                    Footer(),
                  ],
                ),
              ],
            ),
    );
  }

  ElevatedButton Button_scroll() {
    return ElevatedButton(
      onPressed: () {
        _scrollToIndex(3780);
      },
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff1e5ea8),
      ),
      child: Text(
        'CONTACT US',
        style: GoogleFonts.poppins(
            fontSize: 17, letterSpacing: 2, fontWeight: FontWeight.w500),
      ),
    );
  }

  ElevatedButton Button_scroll_small() {
    return ElevatedButton(
      onPressed: () {
        _scrollToIndex(5410);
      },
      style: ElevatedButton.styleFrom(
          primary: const Color(0xff1e5ea8), fixedSize: const Size(50, 20)),
      child: Text(
        'CONTACT US',
        style: GoogleFonts.poppins(
            fontSize: 15, letterSpacing: 1.5, fontWeight: FontWeight.w500),
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
