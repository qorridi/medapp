import 'package:flutter/material.dart';

class Home4test extends StatelessWidget {
  const Home4test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    return Container(
      width: ScreenSize.width,
      height: ScreenSize.height * 1,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.fromLTRB(160, 90, 160, 90),
        width: ScreenSize.width * 0.20,
        height: ScreenSize.height * 1,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(2),
              width: ScreenSize.width * 0.4,
              height: ScreenSize.height * 0.95,
              //color: Colors.blue[900],

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
                    width: ScreenSize.width,
                    height: ScreenSize.height * 0.07,
                    child: Text(
                      "Get our latest demo mobile app and web console link for free trial",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                      height: ScreenSize.height * 0.1,
                      width: ScreenSize.width,
                      child: Text(
                        "Mobile Function: Application for patients (online appointment, queuing information, online payment)",
                        style: TextStyle(
                            fontSize: 15,
                            height: 1.3,
                            letterSpacing: 1.3,
                            color: Colors.white),
                      )),
                  Container(
                      height: ScreenSize.height * 0.1,
                      width: ScreenSize.width,
                      child: Text(
                        "TV Display Function: Display queue calls at every counter or doctor queue at the hospital.",
                        style: TextStyle(
                            fontSize: 15,
                            height: 1.3,
                            letterSpacing: 1.3,
                            color: Colors.white),
                      )),
                  Container(
                      height: ScreenSize.height * 0.1,
                      width: ScreenSize.width,
                      child: Text(
                        "Kiosk Function: Queue pick-up, self-reservation on site, check-in.",
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.3,
                          letterSpacing: 1.3,
                          color: Colors.white,
                        ),
                      )),
                  Container(
                      height: ScreenSize.height * 0.1,
                      width: ScreenSize.width,
                      child: Text(
                        "Web Admin Function: Queue management in hospital, reservation by admin or hospital officer, queue call.",
                        style: TextStyle(
                            fontSize: 15,
                            height: 1.3,
                            letterSpacing: 1.3,
                            color: Colors.white),
                      )),
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
            SizedBox(
              width: 10,
            ),
            Container(
              width: ScreenSize.width * 0.3,
              height: ScreenSize.height * 0.69,
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/images/medaps3.png')),
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
