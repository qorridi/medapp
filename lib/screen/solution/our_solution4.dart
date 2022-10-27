import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurSolution4 extends StatelessWidget {
  const OurSolution4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    return Container(
      width: ScreenSize.width,
      height: ScreenSize.height * 1.3,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(40),
        margin: const EdgeInsets.fromLTRB(160, 90, 160, 90),
        width: ScreenSize.width * 0.20,
        height: ScreenSize.height * 1.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color: Color.fromARGB(200, 9, 47, 171),
          color: Colors.blue[900],
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 10, 116, 255).withAlpha(60),
              blurRadius: 15.0,
              spreadRadius: 10.0,
              offset: const Offset(
                0.0,
                3.0,
              ),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: ScreenSize.height * 0.08,
              width: ScreenSize.width,
              child: Text(
                "Ask for Demo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),

            Container(
              width: ScreenSize.width * 0.7,
              height: ScreenSize.height * 0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/solution3.png'),
                      fit: BoxFit.fill)),
            ),
            Text(
              'Get our latest demo mobile app and web console link for free trial',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            // SizedBox(height: 10,),
            Container(
              height: 35,
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  onSurface: Colors.white,
                  side: BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                child: Text(
                  "Ask for Demo",
                  style: TextStyle(fontSize: 18, letterSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
