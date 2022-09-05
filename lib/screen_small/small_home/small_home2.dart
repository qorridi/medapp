import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/animation/kiri_kanan_small.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SmallHome2 extends StatelessWidget {
  const SmallHome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.5,
      color: const Color.fromARGB(255, 227, 235, 253),
      height: screenSize.height*2,
      padding: EdgeInsets.only(
        left: screenSize.width * 0.10,
        right: screenSize.width * 0.10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 1,),

          Container(
            width: screenSize.width,
            child: Text('How do we help ?',
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 12, 66, 101),
                    fontWeight: FontWeight.bold)),
          ),

          Container(
            width: screenSize.width,
            height: screenSize.height*0.35,
            child: Text(
                'We understand that the global healthcare industry is experiencing several challenges, thus requiring a company`s ability to respond to these challenges quickly and innovatively, '
                    'and seize opportunities that arise will be critical to ensuring the company`s sustainability in the future.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    letterSpacing: 1.1,
                    height: 1.5,
                    fontWeight: FontWeight.w500)),
          ),

          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  curve: Curves.decelerate,
                  direction: Direction.horizontal,
                  offset: -0.3,
                  child: list_help(
                      screenSize: screenSize,
                      titel: 'Costs are getting more expensive'),
              ),
              ShowUpAnimation(
                delayStart: const Duration(seconds: 2),
                curve: Curves.decelerate,
                direction: Direction.horizontal,
                child:  list_help(
                  screenSize: screenSize,
                  titel: "Demographic Change",
                ),
              ),
              ShowUpAnimation(
                delayStart: const Duration(seconds: 3),
                curve: Curves.decelerate,
                direction: Direction.horizontal,
                offset: -0.3,
                child: list_help(
                    screenSize: screenSize,
                    titel: "Rare talents"),
              ),
              ShowUpAnimation(
                delayStart: const Duration(seconds: 4),
                curve: Curves.decelerate,
                direction: Direction.horizontal,
                child:  list_help(
                  screenSize: screenSize,
                  titel: "Rapid technological  Change",
                ),
              ),
              ShowUpAnimation(
                delayStart: const Duration(seconds: 5),
                curve: Curves.decelerate,
                direction: Direction.horizontal,
                offset: -0.3,
                child: list_help(
                    screenSize: screenSize,
                    titel: "Changes in consumer behavior"),
              ),
            ],
          ),

          Container(
            width: screenSize.width,
            height: screenSize.height*0.4,
            child: Text(
                'Too much admin. Longer work hours. Less time spent with patients.'
                    'You’re not alone in the stress and frustration these cause. At MedApps, '
                    'our medical practice management software is designed to make your life easier,'
                    'not harder. Which means you can get on with doing what you do best, in ways that work best for you.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    letterSpacing: 1.1,
                    height: 1.5,
                    fontWeight: FontWeight.w500)),
          ),

          Container(
            width: screenSize.width,
            height: screenSize.height*0.4,
            child: Text(
                'MedApps combines practice management and clinical workflows into one seamless, modern interface. '
                    'Manage all patient interactions securely on the go, or in your practice.'
                    'Benefit from server-free* infrastructure, automatic upgrades and simple licensing.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    letterSpacing: 1.1,
                    height: 1.5,
                    fontWeight: FontWeight.w500)),
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
        leading: const Icon(
          Icons.circle_rounded,
          size: 12,
          color: Colors.black,
        ),
        title: Container(
          // padding: const EdgeInsets.only(left: 10),
          // width: screenSize.width * 0.35,
          // height: screenSize.height * 0.1,
          child: Text(
            titel,
            style: GoogleFonts.poppins(
              fontSize: 16,
              height: 1.3,
            ),
            textAlign: TextAlign.left,
          ),
        ));
  }
}
