import 'package:flutter/material.dart';
import 'package:medapp_eksad/widget/image_slide.dart';


class OurSolution2 extends StatefulWidget {
  const OurSolution2({Key? key}) : super(key: key);

  @override
  State<OurSolution2> createState() => _OurSolution2State();
}

class _OurSolution2State extends State<OurSolution2> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height*0.95,
      padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.1),
      child: Container(
        width: screenSize.width*0.75,
        height: screenSize.height*0.9,
        child: VerticalSlider(),

      ),

    );
  }
}
