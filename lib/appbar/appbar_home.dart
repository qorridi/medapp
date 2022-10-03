import 'package:flutter/material.dart';

import 'package:medapp_eksad/widget/button_appbar.dart';
import 'package:medapp_eksad/register.dart';
import 'package:provider/provider.dart';
import 'package:medapp_eksad/firebase/firebase_auth_methods.dart';


AppBar AppbarHomeLarge(Size screenSize, BuildContext context, Color home,
    Color aboutUs, Color ourServices, Color career, Color contactUs) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 80,
    leadingWidth: screenSize.width * 0.3,
    leading: Row(
      children: [

        Container(
          width: screenSize.width * 0.1,
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          icon: const Image(
            image: AssetImage('assets/logo/medapp-logo.png'),
            width: 500,
            height: 200,
          ),
          iconSize: 190,
        ),
      ],
    ),
    title: Row(
      children: [
        ButtonAppbar_baru(arah: '/', menu: 'Home', warna: home),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(arah: '/about', menu: 'About Us', warna: aboutUs),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(
            arah: '/solutions', menu: 'Our Solution', warna: ourServices),
        const Spacer(
          flex: 1,
        ),
        // ButtonAppbar_baru(arah: '/career', menu: 'Career', warna: career),
        // const Spacer(
        //   flex: 1,
        // ),
        ButtonAppbar_baru(
            arah: '/contact', menu: 'Contact Us', warna: contactUs),
        const Spacer(
          flex: 2,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Text(
            'Login',
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        Container(
          width: screenSize.width * 0.009,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xff1e5ea8),
            fixedSize: const Size(130, 45),
            onPrimary: Colors.red,
          ),
          child: const Text(
            'Register',
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
          ),
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    ),
  );
}

AppBar AppbarHomeLargeUser(Size screenSize, BuildContext context, Color home,
    Color aboutUs, Color ourServices, Color career, Color contactUs,Color demo) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 80,
    leadingWidth: screenSize.width * 0.3,
    leading: Row(
      children: [

        Container(
          width: screenSize.width * 0.1,
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          icon: const Image(
            image: AssetImage('assets/logo/medapp-logo.png'),
            width: 500,
            height: 200,
          ),
          iconSize: 190,
        ),
      ],
    ),
    title: Row(
      children: [
        ButtonAppbar_baru(arah: '/', menu: 'Home', warna: home),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(arah: '/', menu: 'About Us', warna: aboutUs),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(
            arah: '/solutions', menu: 'Our Solution', warna: ourServices),
        const Spacer(
          flex: 1,
        ),
        // ButtonAppbar_baru(arah: '/career', menu: 'Career', warna: career),
        // const Spacer(
        //   flex: 1,
        // ),
        ButtonAppbar_baru(
            arah: '/contact', menu: 'Contact Us', warna: contactUs),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(arah: '/demo', menu: 'Demo', warna: demo),
        Spacer(flex: 2,),
        Container(
          width: screenSize.width * 0.006,
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
        const Spacer(
          flex: 5,
        ),
      ],
    ),
  );
}