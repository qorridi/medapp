import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.5,
      color: const Color.fromARGB(255, 227, 235, 253),
      height: screenSize.height * 1.1,
      padding: EdgeInsets.only(
        left: screenSize.width * 0.10,
        right: screenSize.width * 0.10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 1,
          ),
          Container(
            width: screenSize.width,
            child: Text('MedApp Background',
                style: GoogleFonts.poppins(
                    fontSize: 35,
                    color: const Color.fromARGB(255, 12, 66, 101),
                    fontWeight: FontWeight.bold)),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            width: screenSize.width,
            height: 100,
            child: Text(
                'We understand that the global healthcare industry is experiencing several challenges, thus requiring a company`s ability to respond to these challenges quickly and innovatively, '
                'and seize opportunities that arise will be critical to ensuring the company`s sustainability in the future.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    letterSpacing: 1.1,
                    height: 1.6,
                    fontWeight: FontWeight.w500)),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            // padding: const EdgeInsets.only(left: 1),
            // width: screenSize.width * 0.3,
            // height: screenSize.height * 0.35,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                list_help(
                    screenSize: screenSize,
                    titel: 'Costs are getting more expensive'),
                list_help(
                  screenSize: screenSize,
                  titel: "Demographic Change",
                ),
                list_help(
                  screenSize: screenSize,
                  titel: "Rare talents",
                ),
                list_help(
                  screenSize: screenSize,
                  titel: "Rapid technological change",
                ),
                list_help(
                  screenSize: screenSize,
                  titel: "Changes in consumer behavior",
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            width: screenSize.width,
            height: 100,
            child: Text(
                'Too much admin. Longer work hours. Less time spent with patients.'
                'You’re not alone in the stress and frustration these cause. At MedApps, '
                'our medical practice management software is designed to make your life easier,'
                'not harder. Which means you can get on with doing what you do best, in ways that work best for you.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    letterSpacing: 1.1,
                    height: 1.6,
                    fontWeight: FontWeight.w500)),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            width: screenSize.width,
            height: 100,
            child: Text(
                'MedApps combines practice management and clinical workflows into one seamless, modern interface. '
                'Manage all patient interactions securely on the go, or in your practice.'
                ' Benefit from server-free* infrastructure, automatic upgrades and simple licensing.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    letterSpacing: 1.1,
                    height: 1.6,
                    fontWeight: FontWeight.w500)),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class list_help extends StatelessWidget {
  const list_help({Key? key, required this.screenSize, required this.titel})
      : super(key: key);

  final Size screenSize;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        visualDensity: VisualDensity(vertical: -4),
        leading: const Icon(
          Icons.circle_rounded,
          size: 12,
          color: Colors.black,
        ),
        title: Container(
          // padding: const EdgeInsets.only(left: 10),
          width: screenSize.width * 2,
          // height: screenSize.height * 0.1,
          child: Text(
            titel,
            style: GoogleFonts.poppins(
              fontSize: 18,
              height: 1.3,
            ),
            textAlign: TextAlign.left,
          ),
        ));
  }
}
