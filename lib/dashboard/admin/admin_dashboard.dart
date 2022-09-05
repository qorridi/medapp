import 'package:flutter/material.dart';


class Dashboard1 extends StatelessWidget {
  const Dashboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset('assets/images/medapp_image1.png',height: screenSize.height,width: screenSize.width,)
      ],
    );
  }
}
