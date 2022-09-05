import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/animation/animasi_kanan_kiri.dart';
import 'package:medapp_eksad/animation/animasi_kiri_kanan.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SmallHome3 extends StatefulWidget {
  const SmallHome3({Key? key}) : super(key: key);

  @override
  State<SmallHome3> createState() => _SmallHome3State();
}

class _SmallHome3State extends State<SmallHome3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: screenSize.height * 2.6,
      width: screenSize.width,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text("Why MedApps ?",
              style: GoogleFonts.poppins(
                  fontSize: 36,
                  color: const Color(0xff1e5ea8),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.45,
            child: Row(
              children: [
                Container(
                  width: screenSize.width*0.4,
                  height: screenSize.height * 0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: screenSize.width * 0.4,
                          child: Animasi_Kiri_Kanan(
                              screenSize: screenSize,
                              widget: Image.asset(
                                'assets/icons/why1.png',
                                height: 60,
                                width: 60,
                              ))),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 200,
                        height: 20,
                        child: const Text(
                          'QUEUE SYSTEM',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: screenSize.width*0.5,

                    height: screenSize.height * 0.65,
                    child: const Animasi_Kanan_Kiri_Justify(
                        judul:
                        'Simplify the process of getting queue numbers for various hospital services such as: '
                            'consulting with doctors, using hospital facilities (radiology, laboratories, etc.) and '
                            'purchasing drugs from pharmacies.'))
              ],
            ),
          ),

          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.45,
            child: Row(
              children: [
                Container(
                  width: screenSize.width*0.4,

                  height: screenSize.height * 0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: screenSize.width * 0.4,
                          child: Animasi_Kiri_Kanan(
                              screenSize: screenSize,
                              widget: Image.asset(
                                'assets/icons/why2.png',
                                height: 60,
                                width: 60,
                              ))),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 200,
                        height: 70,
                        child: const Text(
                          'ENGAGEMENT TO PATIENTS WITH NOTIFICATIONS',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: screenSize.width*0.5,

                    height: screenSize.height * 0.65,
                    child: const Animasi_Kanan_Kiri_Justify(
                        judul:
                        'Patients get \nnotifications of queue movements so they can adjust their arrival schedule to the hospital. '
                            'Arrivals close to this service time will have an impact on reducing the crowd of people queuing at the hospital. '
                            'Queue information is integrated with the queue display panel in the hospital.'))
              ],
            ),
          ),

          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.45,
            child: Row(
              children: [
                Container(
                  width: screenSize.width*0.4,

                  height: screenSize.height * 0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: screenSize.width * 0.4,
                          child: Animasi_Kiri_Kanan(
                              screenSize: screenSize,
                              widget: Image.asset(
                                'assets/icons/why3.png',
                                height: 60,
                                width: 60,
                              ))),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 200,
                        height: 70,
                        child: const Text(
                          'SELF-REGISTRATION THROUGH MOBILE APPLICATION OR KIOSK',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: screenSize.width*0.5,

                    height: screenSize.height * 0.65,
                    child: const Animasi_Kanan_Kiri_Justify(
                        judul:
                        'Patients can self-register through a mobile application or kiosk, '
                            'thereby reducing queues at the hospital.'))
              ],
            ),
          ),

          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.35,
            child: Row(
              children: [
                Container(
                  width: screenSize.width*0.4,

                  height: screenSize.height * 0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: screenSize.width * 0.4,
                          child: Animasi_Kiri_Kanan(
                              screenSize: screenSize,
                              widget: Image.asset(
                                'assets/icons/why4.png',
                                height: 60,
                                width: 60,
                              ))),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 200,
                        height: 60,
                        child: const Text(
                          'MULTI CHANNEL PAYMENT',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: screenSize.width*0.5,

                    height: screenSize.height * 0.65,
                    child: const Animasi_Kanan_Kiri_Justify(
                        judul:
                        'Acceptance of payments can be done easily and flexibly with the availability of '
                            'online payment systems (credit cards, transfers, digital-wallet).'))
              ],
            ),
          ),

          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.35,
            child: Row(
              children: [
                Container(
                  width: screenSize.width*0.4,

                  height: screenSize.height * 0.55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: screenSize.width * 0.4,
                          child: Animasi_Kiri_Kanan(
                              screenSize: screenSize,
                              widget: Image.asset(
                                'assets/icons/why4.png',
                                height: 60,
                                width: 60,
                              ))),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 200,
                        height: 40,
                        child: const Text(
                          'DRUG DELIVERY',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: screenSize.width*0.5,

                    height: screenSize.height * 0.55,
                    child: const Animasi_Kanan_Kiri_Justify(
                        judul:
                        'Drug delivery works in collaboration with goods delivery service providers '
                            'which are currently developing fast.',))
              ],
            ),
          ),
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.35,
            child: Row(
              children: [
                Container(
                  width: screenSize.width*0.4,

                  height: screenSize.height * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: screenSize.width * 0.4,
                          child: Animasi_Kiri_Kanan(
                              screenSize: screenSize,
                              widget: Image.asset(
                                'assets/icons/why4.png',
                                height: 60,
                                width: 60,
                              ))),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 200,
                        height: 70,
                        child: const Text(
                          'OTHER FEATURES',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: screenSize.width*0.5,

                    height: screenSize.height * 0.45,
                    child: const Animasi_Kanan_Kiri_Justify(
                      judul:
                      'Online consultation (to be integrated with the current RSSC system), '
                          'Emergency assistance to call ambulances and doctors, '
                          'Rating by consumers for each service',))
              ],
            ),
          ),


        ],
      ),
    );
  }
}
