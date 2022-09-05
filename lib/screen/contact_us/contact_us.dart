import 'package:flutter/material.dart';
import 'package:medapp_eksad/appbar/appbar_home.dart';
import 'package:medapp_eksad/screen_small/small_contact/small_contact_us1.dart';
import 'package:medapp_eksad/screen_small/small_contact/small_contact_us2.dart';
import 'package:medapp_eksad/screen_small/small_footer.dart';
import 'package:medapp_eksad/screen/contact_us/contact_us1.dart';
import 'package:medapp_eksad/screen/contact_us/contact_us2.dart';
import 'package:medapp_eksad/screen/footer.dart';
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

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    setPageTitle('Contact Us', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBarKecil()
            : AppbarHomeLarge(screenSize, context, Colors.black, Colors.black,
                Colors.black, Colors.black, Colors.blue),
        drawer: const DrawerMedApp(),
        body: ResponsiveWidget.isSmallScreen(context)
            ? ListView(
                children: const [
                  ContactUs1_small(),
                  ContactUs2_small(),
                  FooterSmall(),
                ],
              )
            : ListView(
                children: [
                  ContactUs1(),
                  ContactUs2(),
                  Footer(),
                ],
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat()
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
