import 'package:flutter/material.dart';
import 'package:medapp_eksad/auth/forget_password.dart';
import 'package:medapp_eksad/dashboard/admin/main_dashboard_admin.dart';
import 'package:medapp_eksad/homepage.dart';
import 'package:medapp_eksad/login.dart';
import 'package:medapp_eksad/register.dart';
import 'package:medapp_eksad/register_pic.dart';
import 'package:medapp_eksad/screen/contact_us/contact_us.dart';
import 'package:medapp_eksad/screen/solution.dart';
import 'package:medapp_eksad/screen_user/demo_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MedApp by Eksad",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const HomePage(),
        '/solutions': (context) => const Solutions(),
        '/contact': (context) => const ContactUs(),
        '/login': (context) => const SignIn(),
        '/register': (context) => const RegisterPic(),
        '/dashboard': (context) => const DashboardAdmin(),
        '/reset_password': (context) => const ForgotPassword(),
        '/demo': (context) => const DemoUser(),
        //'/register_pic': (context) => const RegisterPic(),
      },
    );
  }
}
