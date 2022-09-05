import 'package:flutter/material.dart';

class SmallHome4 extends StatelessWidget {
  const SmallHome4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: ScreenSize.width,
      height: ScreenSize.height * 1.2,
      color: Colors.white,
      child: Container(
        width: ScreenSize.width * 0.20,
        height: ScreenSize.height * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(200, 9, 47, 171),
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xff137fc2),
              Color(0xff3958d5),
              Color(0xff184b80),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: ScreenSize.height * 0.1,
                width: ScreenSize.width,
                child: Text(
                  "Mobile & Web Apps",
                  style: TextStyle(color: Colors.white, fontSize: 36),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: ScreenSize.width * 0.85,
                height: ScreenSize.height * 0.6,
                // color: Colors.white,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/images/medaps3.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                  height: ScreenSize.height * 0.13,
                  width: ScreenSize.width,
                  child: Text(
                    "MedApps menyediakan Aplikasi Mobile dan juga website yang bisa anda kunjungi",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.justify,
                  )),
              Center(
                child: Container(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900],
                      onSurface: Colors.white,
                      side: BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    child: Text(
                      "LEARN MORE",
                      style: TextStyle(fontSize: 18, letterSpacing: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
