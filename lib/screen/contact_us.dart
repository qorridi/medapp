import 'package:flutter/material.dart';
import 'package:medapp_eksad/appbar/appbar_home.dart';
import 'package:medapp_eksad/screen/footer.dart';
import 'package:medapp_eksad/widget/responsive.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
      body: ListView(
        children: [
          Footer()
        ],
      ),
    );
  }


  AppBar AppBarKecil() {
    return AppBar(
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        icon: Icon(Icons.list_outlined,size: 30,color: Colors.black,),),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Container(
        child: SizedBox(
          height: 50,
          width: 150,
          child: Image.asset("assets/logo/medapp-logo.png"),
        ),
      ),

      // ),
    );
  }
}

