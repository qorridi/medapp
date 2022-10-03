import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/api/setting_api.dart';
import 'package:medapp_eksad/api/sosmed_api.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSmall extends StatelessWidget {
  const FooterSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Divider(
          height: 3,
          thickness: 3,
        ),
        SizedBox(
          height: screenSize.height * 0.01,
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 5),
                  width: screenSize.width,
                  height: screenSize.height * 0.29,
                  child: Column(
                    children: [
                      Container(
                        width: screenSize.width * 0.4,
                        height: screenSize.height * 0.08,
                        decoration: const BoxDecoration(
                            //color: Colors.lightBlueAccent,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/logo/medapp-logo.png'),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: screenSize.width * 0.4,
                        height: screenSize.height * 0.10,
                        decoration: const BoxDecoration(
                            //color: Colors.lightBlueAccent,
                            image: DecorationImage(
                                image: AssetImage('assets/logo/logo-eksad.png'),
                                fit: BoxFit.fill)),
                      ),
                      const Spacer(),
                      Container(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.03,
                        //color: Colors.blue,
                        child: const Center(
                          child: Text(
                            'Your one stop IT Solution',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.03,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.15),
                        //color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ApiLinkedin(),
                            ApiTwitter(),
                            ApiInstagram(),
                            ApiYoutube(),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      )
                    ],
                  )),
              Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.35,
                  //color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.1,
                        child: Center(
                          child: Text(
                            ' Sitemap',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Home',
                          routeName: '/',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'About Us',
                          routeName: '/about',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Solutions',
                          routeName: '/solutions',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Contact Us',
                          routeName: '/contact',
                        ),
                      ),
                      Spacer()
                    ],
                  )),
              Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.1,
                        child: Center(
                          child: Text(
                            ' Solutions',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.04,
                        child: itemBawah_small(
                          item: 'Catalog',
                          routeName: '/solutions',
                        ),
                      ),
                    ],
                  )),
              Center(
                child: Container(
                    width: screenSize.width * 0.95,
                    height: screenSize.height * 0.56,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenSize.width,
                          height: screenSize.height * 0.1,
                          child: Center(
                            child: Text(
                              ' Contact',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            TelphoneApi(),
                            EmailAPI(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width * 0.15),
                              width: screenSize.width,
                              child: ListTile(
                                  minLeadingWidth: 2,
                                  leading: const Icon(
                                    Icons.location_on,
                                    size: 24,
                                    color: Colors.black,
                                  ),
                                  title: Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    width: screenSize.width * 0.48,
                                    child: Text(
                                      'PT. Tiga Daya Digital Indonesia \nThe East '
                                      'Tower 19th Floor \nJl. Dr. Ide Anak Agung '
                                      '\nGde Agung Blok E3.2 '
                                      '\nMega Kuningan, \nJakarta Selatan 12950',
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          height: 1.45,
                                          letterSpacing: 1.1),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
        const Divider(
          height: 3,
          thickness: 3,
        ),
        SizedBox(
          width: screenSize.width,
          height: screenSize.height * 0.12,
          child: const Center(
            child: Text(
              'PT. Tiga Daya Digital Indonesia © 2018, \nAll Rights Reserved.',
              style: TextStyle(letterSpacing: 1.3, height: 1.4, fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

class itemBawah_small extends StatelessWidget {
  const itemBawah_small({Key? key, required this.item, required this.routeName})
      : super(key: key);
  final String item;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Text(
          item,
          style: GoogleFonts.poppins(
              color: const Color(0xff1e5ea8),
              //decoration: TextDecoration.underline,
              fontSize: 17,
              letterSpacing: 1.2),
        ));
  }
}

class ApiLinkedin extends StatefulWidget {
  const ApiLinkedin({Key? key}) : super(key: key);

  @override
  State<ApiLinkedin> createState() => _ApiLinkedinState();
}

class _ApiLinkedinState extends State<ApiLinkedin> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: getLnDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];

        if (snapshot.hasError ||
            snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return IconButton(
            onPressed: () {
              // ln = ;
              launch(pgm['linkedin']);
              // _launchLinkedIn();
            },
            icon: const Icon(
              FontAwesomeIcons.linkedinIn,
              size: 25,
            ),
            iconSize: 35,
            color: Colors.black);
      },
    );
  }
}

class ApiTwitter extends StatefulWidget {
  const ApiTwitter({Key? key}) : super(key: key);

  @override
  State<ApiTwitter> createState() => _ApiTwitterState();
}

class _ApiTwitterState extends State<ApiTwitter> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: getTwDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];

        if (snapshot.hasError ||
            snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return IconButton(
            onPressed: () {
              // ln = ;
              launch(pgm['twitter']);
              // _launchLinkedIn();
            },
            icon: const Icon(
              FontAwesomeIcons.twitter,
              size: 25,
            ),
            iconSize: 35,
            color: Colors.black);
      },
    );
  }
}

class ApiInstagram extends StatefulWidget {
  const ApiInstagram({Key? key}) : super(key: key);

  @override
  State<ApiInstagram> createState() => _ApiInstagramState();
}

class _ApiInstagramState extends State<ApiInstagram> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: getIgDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];

        if (snapshot.hasError ||
            snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return IconButton(
            onPressed: () {
              // ln = ;
              launch(pgm['instagram']);
              // _launchLinkedIn();
            },
            icon: const Icon(
              FontAwesomeIcons.instagram,
              size: 25,
            ),
            iconSize: 35,
            color: Colors.black);
      },
    );
  }
}

class ApiYoutube extends StatefulWidget {
  const ApiYoutube({Key? key}) : super(key: key);

  @override
  State<ApiYoutube> createState() => _ApiYoutubeState();
}

class _ApiYoutubeState extends State<ApiYoutube> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
        future: getYtDesc(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          var pgm = snapshot.data[0];

          if (snapshot.hasError ||
              snapshot.data == null ||
              snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          return IconButton(
              onPressed: () {
                // ln = ;
                launch(pgm['youtube']);
                // _launchLinkedIn();
              },
              icon: const Icon(
                FontAwesomeIcons.youtube,
                size: 25,
              ),
              iconSize: 35,
              color: Colors.black);
        });
  }
}

class TelphoneApi extends StatefulWidget {
  const TelphoneApi({Key? key}) : super(key: key);

  @override
  State<TelphoneApi> createState() => _TelphoneApiState();
}

class _TelphoneApiState extends State<TelphoneApi> {
  String no = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return FutureBuilder<List<dynamic>>(
      future: getSettingDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];
        if (snapshot.hasError ||
            snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return Container(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.15),
          width: screenSize.width,
          child: ListTile(
            minLeadingWidth: 2,
            leading: const Icon(
              Icons.phone,
              size: 19,
              color: Colors.black,
            ),
            title: TextButton(
                onPressed: () {
                  no = pgm['no'];
                  //02157958040
                  launch('tel:$no');
                },
                child: Text(
                  pgm['no'],
                  style: GoogleFonts.poppins(
                      fontSize: 14, color: Colors.black87, letterSpacing: 1.5),
                )),
          ),
        );
      },
    );
  }
}

class EmailAPI extends StatefulWidget {
  const EmailAPI({Key? key}) : super(key: key);

  @override
  State<EmailAPI> createState() => _EmailAPIState();
}

class _EmailAPIState extends State<EmailAPI> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return FutureBuilder<List<dynamic>>(
      future: getSettingDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];
        if (snapshot.hasError ||
            snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return Container(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.15),
          width: screenSize.width,
          child: ListTile(
            minLeadingWidth: 2,
            leading: const Icon(
              Icons.mail,
              size: 19,
              color: Colors.black,
            ),
            title: TextButton(
                onPressed: () {
                  email = pgm['email'];
                  launch('mailto:$email?subject=Info Medapp');
                },
                // child: SettingAPI(),
                child: Text(
                  pgm['email'],
                  style: GoogleFonts.poppins(
                      fontSize: 14, color: Colors.black87, letterSpacing: 1.1),
                )),
          ),
        );
      },
    );
  }
}
