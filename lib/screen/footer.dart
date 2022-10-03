import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/api/setting_api.dart';
import 'package:medapp_eksad/api/sosmed_api.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  Footer({Key? key}) : super(key: key);
  String ln = '';
  String tw = '';
  String ig = '';
  String yt = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        width: screenSize.width,
        height: screenSize.height * 0.8,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(
              height: 3,
              thickness: 3,
            ),
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 5),
                      width: screenSize.width * 0.2,
                      height: screenSize.height * 0.35,
                      child: Column(
                        children: [
                          Container(
                            width: screenSize.width * 0.12,
                            height: screenSize.height * 0.07,
                            decoration: const BoxDecoration(
                              //color: Colors.lightBlueAccent,
                              image: DecorationImage(
                                  image:
                                  AssetImage('assets/logo/medapp-logo.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Spacer(
                            flex: 8,
                          ),
                          Container(
                            width: screenSize.width * 0.1,
                            height: screenSize.height * 0.08,
                            decoration: const BoxDecoration(
                              //color: Colors.lightBlueAccent,
                              image: DecorationImage(
                                  image:
                                  AssetImage('assets/logo/logo-eksad.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Spacer(
                            flex: 8,
                          ),
                          Container(
                            width: screenSize.width * 0.2,
                            height: screenSize.height * 0.05,
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
                            flex: 2,
                          ),
                          Container(
                            width: screenSize.width * 0.16,
                            height: screenSize.height * 0.03,
                            //color: Colors.blue,
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                ApiLinkedin(),
                                ApiTwitter(),
                                ApiInstagram(),
                                ApiYoutube(),
                              ],
                            ),
                          ),
                          const Spacer(
                            flex: 8,
                          )
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.13,
                      height: screenSize.height * 0.27,
                      //color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenSize.width * 0.13,
                            height: screenSize.height * 0.07,
                            child: Text(
                              ' Sitemap',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Home',
                              routeName: '/',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'About Us',
                              routeName: '/about',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Solutions',
                              routeName: '/solutions',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Contact Us',
                              routeName: '/contact',
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.13,
                      height: screenSize.height * 0.27,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: screenSize.width * 0.13,
                            height: screenSize.height * 0.07,
                            child: Text(
                              ' Solutions',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'Catalog',
                              routeName: '/solutions',
                            ),
                          ),
                          // const Spacer(),
                          // Container(
                          //   height: screenSize.height * 0.04,
                          //   child: const itemBawah(
                          //     item: 'Dedicated Services',
                          //     routeName: '/solutions',
                          //   ),
                          // ),
                          // const Spacer(),
                          // Container(
                          //   height: screenSize.height * 0.04,
                          //   child: const itemBawah(
                          //     item: 'Contract Services',
                          //     routeName: '/solutions',
                          //   ),
                          // ),
                          // const Spacer(),
                          // Container(
                          //   height: screenSize.height * 0.04,
                          //   child: const itemBawah(
                          //     item: 'Recruitment',
                          //     routeName: '/solutions',
                          //   ),
                          // ),
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.25,
                      height: screenSize.height * 0.6,
                      //color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: screenSize.width * 0.2,
                            height: screenSize.height * 0.07,
                            child: Text(
                              ' Contact',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          const SizedBox(height: 8),
                          TelphoneApi(),
                          EmailAPI(),
                          Container(
                            width: screenSize.width * 0.25,
                            height: screenSize.height * 0.29,
                            child: ListTile(
                                leading: const Icon(
                                  Icons.location_on,
                                  size: 28,
                                  color: Colors.black,
                                ),
                                title: Container(
                                  padding: const EdgeInsets.only(left: 25),
                                  width: screenSize.width * 0.25,
                                  height: screenSize.height * 0.8,
                                  child: Text(
                                    'PT. Tiga Daya Digital Indonesia \nThe East '
                                        'Tower 19th Floor \nJl. Dr. Ide Anak Agung '
                                        '\nGde Agung Blok E3.2 '
                                        '\nMega Kuningan, \nJakarta Selatan 12950',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      height: 1.5,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const Divider(
              height: 3,
              thickness: 3,
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height * 0.13,
              child: const Center(
                  child: Text(
                    'PT. Tiga Daya Digital Indonesia © 2018, All Rights Reserved.',
                    style: TextStyle(letterSpacing: 1.3, height: 1.4, fontSize: 17),
                  )),
            )
          ],
        ));
  }
}

class itemBawah extends StatelessWidget {
  const itemBawah({Key? key, required this.item, required this.routeName})
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
          width: screenSize.width * 0.20,
          child: ListTile(
            leading: const Icon(
              Icons.phone,
              size: 23,
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
                      fontSize: 16, color: Colors.black87, letterSpacing: 1.5),
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
          width: screenSize.width * 0.25,
          child: ListTile(
            leading: const Icon(
              Icons.mail,
              size: 23,
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
                      fontSize: 16, color: Colors.black87, letterSpacing: 1.1),
                )),
          ),
        );
      },
    );
  }
}
