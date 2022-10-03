import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/api/setting_api.dart';
import 'package:medapp_eksad/appbar/appbar_home.dart';
import 'package:medapp_eksad/screen/contact_us/contact_us2.dart';
import 'package:medapp_eksad/screen/footer.dart';
import 'package:medapp_eksad/screen/solution/our_solution.dart';
import 'package:medapp_eksad/screen/solution/our_solution2.dart';
import 'package:medapp_eksad/screen/solution/our_solution3.dart';
import 'package:medapp_eksad/screen_small/small_footer.dart';
import 'package:medapp_eksad/screen_small/small_solution/small_solution1.dart';
import 'package:medapp_eksad/screen_small/small_solution/small_solution2.dart';
import 'package:medapp_eksad/widget/Scroll_top.dart';
import 'package:medapp_eksad/widget/componen.dart';
import 'package:medapp_eksad/widget/drawer.dart';
import 'package:medapp_eksad/widget/responsive.dart';
import 'package:flutter/services.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class Solutions extends StatefulWidget {
  const Solutions({Key? key}) : super(key: key);

  @override
  State<Solutions> createState() => _SolutionsState();
}

class _SolutionsState extends State<Solutions> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ScrollController controller2 = ScrollController();
  void _scrollToIndex(double index) {
    controller2.animateTo(index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context) {
    setPageTitle('Our Solutions', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: WAChat(),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBarKecil()
          : AppbarHomeLarge(screenSize, context, Colors.black, Colors.black,
              Colors.blue, Colors.black, Colors.black),
      drawer: const DrawerMedApp(),
      body: ResponsiveWidget.isSmallScreen(context)
          ? Stack(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  controller: controller2,
                  children: [
                    SmallOurSolution(wijet: Button_scroll()),
                    SmallOurSolution2(),
                    FooterSmall(),
                  ],
                ),
              ],
            )
          : Stack(
              children: [
                ListView(
                  controller: controller2,
                  children: [
                    OurSolution(
                      wijet: Button_scroll(),
                      button: ButtonSolution(context),
                    ),
                    OurSolution2(),
                    ContactUs2(),
                    Footer(),
                  ],
                ),
              ],
            ),
    );
  }

  ElevatedButton ButtonSolution(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _scrollToIndex(550);
      },
      style: DefaultColors(),
      // ElevatedButton.styleFrom(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10),
      //   ),
      //   primary: Color.fromARGB(255, 48, 104, 170),
      //   // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
      // ),
      child: const Text(
        'Our Catalog',
        style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.1,
            color: Colors.white),
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
