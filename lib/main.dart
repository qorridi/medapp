import 'package:flutter/material.dart';
import 'package:medapp_eksad/auth/forget_password.dart';
import 'package:medapp_eksad/dashboard/admin/main_dashboard_admin.dart';
import 'package:medapp_eksad/homepage.dart';
import 'package:medapp_eksad/login.dart';
import 'package:medapp_eksad/register.dart';
import 'package:medapp_eksad/screen/contact_us/contact_us.dart';
import 'package:medapp_eksad/screen/solution.dart';

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
        '/login': (context) => const login(),
        '/register': (context) => const Register(),
        '/dashboard': (context) => const DashboardAdmin(),
        '/reset_password': (context) => const ForgotPassword(),
      },
    );
  }
}
