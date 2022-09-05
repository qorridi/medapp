import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ContactUs1_small extends StatefulWidget {
  const ContactUs1_small({Key? key}) : super(key: key);

  @override
  State<ContactUs1_small> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs1_small> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.42,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/contactus1.jpg",
                  ),
                  alignment: Alignment.center,
                  fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.4,
          padding: EdgeInsets.only(top: screenSize.height*0.07),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Contact Us',
                style: GoogleFonts.poppins(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
