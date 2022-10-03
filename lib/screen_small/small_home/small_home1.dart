import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/widget/button_color.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SmallHome1 extends StatelessWidget {
  SmallHome1({Key? key, required this.wijet}) : super(key: key);
  final Widget wijet;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.7,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/homepage.png",
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.7,
          decoration: BoxDecoration(
            color: Colors.blue,
            gradient: LinearGradient(
              colors: [
                Colors.blue.withOpacity(0.0),
                Colors.blue,
              ],
              stops: const [0.0, 1.0],
            ),
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.65,
          padding: EdgeInsets.only(
              left: screenSize.width * 0.4, top: screenSize.height * 0.05),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.09,
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  direction: Direction.horizontal,
                  child: Text(
                    'Engage With Your Patients More Efficiently',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 1),
                width: screenSize.width * 0.47,
                height: screenSize.height * 0.31,
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  // offset: -0.2,
                  child: Text(
                    'Welcome to healthcare’s most powerful collaboration suite. '
                    'Enhance clinical workflows, speed decisions, and improve'
                    ' patient outcomes, safely and securely.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        // letterSpacing: 1.3,
                        // height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: screenSize.width * 0.36,
                height: screenSize.height * 0.1,
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    style: DefaultColors(),
                    child: const Text(
                      'TALK WITH EXPERT',
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
