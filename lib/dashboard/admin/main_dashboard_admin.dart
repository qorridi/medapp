import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:medapp_eksad/dashboard/admin/admin_contact.dart';
import 'package:medapp_eksad/dashboard/admin/admin_dashboard.dart';
import 'package:medapp_eksad/dashboard/admin/admin_setting.dart';
import 'package:medapp_eksad/dashboard/admin/admin_sosmed.dart';
import 'package:medapp_eksad/dashboard/admin/admin_userControl.dart';
import 'package:medapp_eksad/dashboard/admin/admin_whatsapp.dart';
import 'package:provider/provider.dart';
import 'package:medapp_eksad/firebase/firebase_auth_methods.dart';

class DashboardAdmin extends StatefulWidget {
  const DashboardAdmin({Key? key}) : super(key: key);

  @override
  State<DashboardAdmin> createState() => _DashboardAdminState();
}

class _DashboardAdminState extends State<DashboardAdmin> {
  PageController page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leadingWidth: 230,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          child: Container(
            width: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logo/medapp-logo.png'),
                    fit: BoxFit.fill)),
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(
              Icons.remove_red_eye,
            ),
            label: const Text(
              'Site Online',
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(
              Icons.output,
            ),
            label: const Text(
              'Logout',
              style: TextStyle(),
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            showToggle: true,
            controller: page,
            // onDisplayModeChanged: (mode) {
            //   print(mode);
            // },
            style: SideMenuStyle(
              openSideMenuWidth: 220,
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.blue[50],
              selectedColor: Colors.blue[100],
              selectedTitleTextStyle: const TextStyle(color: Colors.black),
              selectedIconColor: Colors.black,
              unselectedIconColor: Colors.black87,
              unselectedTitleTextStyle: const TextStyle(color: Colors.black87),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              backgroundColor: Colors.blueAccent[200],
            ),
            title: Column(
              children: [
                // ConstrainedBox(
                //   constraints: const BoxConstraints(
                //     maxHeight: 150,
                //     maxWidth: 150,
                //   ),
                //   child: Image.asset(
                //     'assets/logo/medapp-logo.png',
                //   ),
                // ),
                // const Divider(
                //   indent: 8.0,
                //   endIndent: 8.0,
                // ),
                Container(
                  height: 20,
                )
              ],
            ),
            footer: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Medapp By Eksad',
                style: TextStyle(fontSize: 15),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Dashboard',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(Icons.home),
                // badgeContent: const Text(
                //   '3',
                //   style: TextStyle(color: Colors.white),
                // ),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Setting',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: const Icon(Icons.file_copy_rounded),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Social Media',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: const Icon(Icons.phone_android),
              ),
              SideMenuItem(
                priority: 3,
                title: 'Contact List',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: const Icon(Icons.contact_mail),
              ),
              SideMenuItem(
                  onTap: () {
                    page.jumpToPage(4);
                  },
                  title: 'User Control',
                  icon: const Icon(Icons.admin_panel_settings),
                  priority: 4)
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                const Dashboard1(),
                SettingDashboard(),
                SosmedDashboard(),
                //Dashboard3(),
                Dashboard4(),
                UserControl()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
