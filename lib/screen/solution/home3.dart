import 'package:flutter/material.dart';
import 'package:medapp_eksad/animation/animasi_kiri_kanan.dart';
import 'package:medapp_eksad/animation/animasi_kanan_kiri.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      width: screenSize.width,
      height: screenSize.height * 0.75,
       child: Column(
         children: <Widget>[
           const SizedBox(
             height:40,
           ),
           Text("MedApps Features",
             style: TextStyle(
               fontSize: 32,
               fontWeight: FontWeight.bold,
               color: Colors.blue[900]
             ),
           ),
           const SizedBox(
             height: 40,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               SizedBox(
                 width: screenSize.width * 0.2,
                 child: Column(
                   children: [
                     Container(
                       padding: EdgeInsets.only(top: screenSize.height * 0.01),
                       width: screenSize.width * 0.5,
                       child: Animasi_Kiri_Kanan(
                         screenSize: screenSize,
                         widget: Image.asset(
                           'assets/icons/our_solution2.png',
                           height: 50,
                           width: 50,
                         ),
                       ),
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     Container(
                         padding: const EdgeInsets.only(top: 5),
                         width: 250,
                         height: 50,
                         child: Text(
                           "RETAINED SEARCH",
                           style: TextStyle(
                               color: Colors.blue[800],
                               fontSize: 17,
                               letterSpacing: 1.1,
                               fontWeight: FontWeight.w600
                           ),
                           textAlign: TextAlign.center,
                         )
                     ),
                     const SizedBox(height: 10,),
                     SizedBox(
                       width: 220,
                       height: screenSize.height * 0.30,
                       child: const Animasi_Kanan_Kiri(
                         judul: "We not only keep our eyes wide open for talented individuals, we make it an active endeavour. One that digs deeper to find you that star employee ahead of your competition.",
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 width: screenSize.width * 0.2,
                 child: Column(
                   children: [
                     Container(
                       padding: EdgeInsets.only(top: screenSize.height * 0.01),
                       width: screenSize.width * 0.5,
                       child: Animasi_Kiri_Kanan(
                         screenSize: screenSize,
                         widget: Image.asset(
                           'assets/icons/our_solution1.png',
                           height: 50,
                           width: 50,
                         ),
                       ),
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     Container(
                         padding: const EdgeInsets.only(top: 5),
                         width: 250,
                         height: 50,
                         child: Text(
                           "DEDICATED SERVICES",
                           style: TextStyle(
                               color: Colors.blue[800],
                               fontSize: 17,
                               letterSpacing: 1.1,
                               fontWeight: FontWeight.w600
                           ),
                           textAlign: TextAlign.center,
                         )
                     ),
                     const SizedBox(height: 10,),
                     SizedBox(
                       width: 220,
                       height: screenSize.height * 0.30,
                       child: const Animasi_Kanan_Kiri(
                         judul: "Our dedicated team of recruiters help fulfill your critical hiring needs in the mid-level and executive positions making the recruitment cycle short and efficient.",
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 width: screenSize.width * 0.2,
                 child: Column(
                   children: [
                     Container(
                       padding: EdgeInsets.only(top: screenSize.height * 0.01),
                       width: screenSize.width * 0.5,
                       child: Animasi_Kiri_Kanan(
                         screenSize: screenSize,
                         widget: Image.asset(
                           'assets/icons/our_solution3.png',
                           height: 50,
                           width: 50,
                         ),
                       ),
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     Container(
                         padding: const EdgeInsets.only(top: 5),
                         width: 250,
                         height: 50,
                         child: Text(
                           "CONTRACT SERVICES",
                           style: TextStyle(
                               color: Colors.blue[800],
                               fontSize: 17,
                               letterSpacing: 1.1,
                               fontWeight: FontWeight.w600
                           ),
                           textAlign: TextAlign.center,
                         )
                     ),
                     const SizedBox(height: 10,),
                     SizedBox(
                       width: 220,
                       height: screenSize.height * 0.30,
                       child: const Animasi_Kanan_Kiri(
                         judul: "Time sensitive projects are treated with urgency to provide skilled technical resources needed for quick and cost-effective turnaround.",
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 width: screenSize.width * 0.2,
                 child: Column(
                   children: [
                     Container(
                       padding: EdgeInsets.only(top: screenSize.height * 0.01),
                       width: screenSize.width * 0.5,
                       child: Animasi_Kiri_Kanan(
                         screenSize: screenSize,
                         widget: Image.asset(
                           'assets/icons/our_solution4.png',
                           height: 50,
                           width: 50,
                         ),
                       ),
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     Container(
                         padding: const EdgeInsets.only(top: 5),
                         width: 250,
                         height: 50,
                         child: Text(
                           "RECRUITMENT PROCESS OUTSOURCING",
                           style: TextStyle(
                               color: Colors.blue[800],
                               fontSize: 17,
                               letterSpacing: 1.1,
                               fontWeight: FontWeight.w600
                           ),
                           textAlign: TextAlign.center,
                         )
                     ),
                     const SizedBox(height: 10,),
                     SizedBox(
                       width: 220,
                       height: screenSize.height * 0.30,
                       child: const Animasi_Kanan_Kiri(
                         judul: "Hire the best without ever having to face the logistics. From the very beginning till actually getting your next \"rockstar\"employees to walk in and take their positions on your floors.",
                       ),
                     ),
                   ],
                 ),
               ),
             ],
           )
         ],
       ),
    );
  }
}
