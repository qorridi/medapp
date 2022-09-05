import 'package:flutter/material.dart';
import 'package:medapp_eksad/widget/button_color.dart';

class Home4 extends StatelessWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    return Container(
      width: ScreenSize.width,
      height: ScreenSize.height * 0.98,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.fromLTRB(160, 90, 160, 90),
        width: ScreenSize.width * 0.20,
        height: ScreenSize.height * 0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color: Color.fromARGB(200, 9, 47, 171),
          color: Colors.blue[900],
          boxShadow: [
            BoxShadow(
              color:
              const Color.fromARGB(255, 10, 116, 255).withAlpha(60),
              blurRadius: 15.0,
              spreadRadius: 10.0,
              offset: const Offset(
                0.0,
                3.0,
              ),
            ),
          ],
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: ScreenSize.width * 0.36,
                height: ScreenSize.height * 0.69,
                color: Colors.blue[900],
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          Text("Mobile & Web Apps",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Container(
                              height: 100,
                              width: ScreenSize.width *0.30,
                              child: Text(
                                  "Now this application is available on your smartphone, Download now !",
                                style: TextStyle(
                                  fontSize: 21,
                                  height: 1.3,
                                  letterSpacing: 1.3,
                                  color: Colors.white
                                ),
                              )
                          ),
                        ],
                      ),
                      // SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height : 50,
                            width : 200,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue[900],
                                onSurface: Colors.white,
                                side: BorderSide(
                                  color: Colors.white
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)
                                  ),
                                ),
                              ),
                              child: Text(
                                  "Download",
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 2
                                ),
                              ),
                            ),
                            // child: ElevatedButton(
                            //     onPressed: (){},
                            //   style: DefaultColors(),
                            //   // ElevatedButton.styleFrom(
                            //   //   primary: Colors.blue,
                            //   //   fixedSize: Size(170, 85),
                            //   //   onPrimary: Colors.white,
                            //   //   shape: RoundedRectangleBorder(
                            //   //     borderRadius: BorderRadius.all(Radius.circular(30),
                            //   //     )
                            //   //   )
                            //   // ),
                            //     child: Text("LEARN MORE",
                            //       style: TextStyle(
                            //         fontSize: 18,
                            //         letterSpacing: 2
                            //       ),
                            //     ),
                            // ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 40,),
              Container(
                width: ScreenSize.width * 0.3,
                height: ScreenSize.height * 0.69,
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/medaps3.png')
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
