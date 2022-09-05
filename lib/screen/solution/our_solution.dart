import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';


class OurSolution extends StatelessWidget {
  const OurSolution({Key? key,required this.button}) : super(key: key);

  final Widget button;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.8,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/solution.jpg",
                ),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: screenSize.width,
          height: screenSize.height * 0.5,

          // ),
        ),
        Container(
          padding: EdgeInsets.only(right: screenSize.width * 0.5),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 70),
                Container(
                  height: screenSize.height * 0.10,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: Text(
                      'Find & Get the Best Talent',
                      style: GoogleFonts.poppins(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: screenSize.width * 0.28,
                  height: screenSize.height * 0.15,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.decelerate,
                    direction: Direction.horizontal,
                    child: Text(
                      'Register for free now, find our Best Talent, and enjoy our unlimited hires at a low cost',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          letterSpacing: 1.8,
                          height: 1.4,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: button,
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}


// class OurSolution extends StatefulWidget {
//   const OurSolution({Key? key,required this.button}) : super(key: key);
//
//   final Widget button;
//
//   @override
//   State<OurSolution> createState() => _OurSolutionState();
// }
//
// class _OurSolutionState extends State<OurSolution> {
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return Stack(
//       children: [
//         Container(
//           width: screenSize.width,
//           height: screenSize.height * 0.8,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(
//                   "assets/images/solution.jpg",
//                 ),
//                 alignment: Alignment.topCenter,
//                 fit: BoxFit.cover),
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         SizedBox(
//           width: screenSize.width,
//           height: screenSize.height * 0.5,
//
//           // ),
//         ),
//         Container(
//           padding: EdgeInsets.only(right: screenSize.width * 0.5),
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 const SizedBox(height: 70),
//                 Container(
//                   height: screenSize.height * 0.10,
//                   child: ShowUpAnimation(
//                     delayStart: const Duration(seconds: 1),
//                     curve: Curves.bounceIn,
//                     direction: Direction.horizontal,
//                     offset: -0.2,
//                     child: Text(
//                       'Find & Get the Best Talent',
//                       style: GoogleFonts.poppins(
//                           fontSize: 34,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 Container(
//                   width: screenSize.width * 0.28,
//                   height: screenSize.height * 0.15,
//                   child: ShowUpAnimation(
//                     delayStart: const Duration(seconds: 1),
//                     curve: Curves.decelerate,
//                     direction: Direction.horizontal,
//                     child: Text(
//                       'Register for free now, find our Best Talent, and enjoy our unlimited hires at a low cost',
//                       style: GoogleFonts.poppins(
//                           fontSize: 18,
//                           letterSpacing: 1.8,
//                           height: 1.4,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 50,
//                   child: ShowUpAnimation(
//                     delayStart: const Duration(seconds: 1),
//                     curve: Curves.bounceIn,
//                     direction: Direction.horizontal,
//                     offset: -0.2,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/register');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         primary: Color.fromARGB(255, 48, 104, 170),
//                         // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
//                       ),
//                       child: const Text(
//                         'FREE DEMO',
//                         style: TextStyle(
//                             fontSize: 19,
//                             fontWeight: FontWeight.w500,
//                             letterSpacing: 1.1,
//                             color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
