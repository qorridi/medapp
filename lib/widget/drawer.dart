import 'package:flutter/material.dart';


class DrawerMedApp extends StatelessWidget {
  const DrawerMedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Color.fromARGB(255, 76, 154, 231),
      width: 200,
      child: Container(
        // decoration: BoxDecoration(
        //   color: Colors.blue,
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.blue,
        //       Colors.blue.withOpacity(0.0),
        //
        //     ],
        //     stops: [0.0, 1.0],
        //   ),
        // ),
        child: Column(
          children: [
            const SizedBox(height: 50,),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () => Navigator.pushNamed(context, '/') ,
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('About Us',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () =>Navigator.pushNamed(context, '/about') ,
            ),
            ListTile(
              leading: const Icon(Icons.settings_applications),
              title: const Text('Our Solution',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () =>Navigator.pushNamed(context, '/solutions')  ,
            ),
            // ListTile(
            //   leading: Icon(Icons.event_note),
            //   title: Text('Career'),
            //   onTap: () => Navigator.pushNamed(context, '/career') ,
            // ),
            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text('Contact Us',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () => Navigator.pushNamed(context, '/contact') ,
            ),
            const SizedBox(height: 60,),
            ListTile(
              title: const Text('Login',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () => Navigator.pushNamed(context, '/login') ,
            ),
            ListTile(
              title: const Text('Register',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () => Navigator.pushNamed(context, '/register') ,
            ),
          ],
        ),
      ),
    );
  }
}
