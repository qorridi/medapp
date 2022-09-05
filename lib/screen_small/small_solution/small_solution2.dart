import 'package:flutter/material.dart';
import 'package:medapp_eksad/widget/small_image_slide.dart';


class SmallOurSolution2 extends StatefulWidget {
  const SmallOurSolution2({Key? key}) : super(key: key);

  @override
  State<SmallOurSolution2> createState() => _SmallOurSolution2State();
}

class _SmallOurSolution2State extends State<SmallOurSolution2> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height*0.55,
      padding: EdgeInsets.symmetric( vertical: screenSize.height*0.05),
      child: SizedBox(
        width: screenSize.width,
        height: screenSize.height*0.5,
        child: SmallVerticalSlider()

      ),

    );
  }
}
