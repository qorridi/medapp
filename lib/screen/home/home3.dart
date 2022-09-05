import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/animation/animasi_kanan_kiri.dart';
import 'package:medapp_eksad/animation/animasi_kiri_kanan.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 1.72,
      width: screenSize.width,
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Text("Why MedApps ?",
              style: GoogleFonts.poppins(
                  fontSize: 36,
                  color: const Color(0xff1e5ea8),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                              'assets/icons/why1.png',
                              height: 60,
                              width: 60,
                            )
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'QUEUE SYSTEM',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 17,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.55,
                        child: const Animasi_Kanan_Kiri(
                            judul:
                                'Simplify the process of getting queue numbers for various hospital services such as: '
                                'consulting with doctors, using hospital facilities (radiology, laboratories, etc.) and '
                                'purchasing drugs from pharmacies.'))
                  ],
                ),
              ),
              SizedBox(width: 50,),
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
                              'assets/icons/why2.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'ENGAGEMENT TO PATIENTS WITH NOTIFICATIONS',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 17,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: 220,
                      height: screenSize.height * 0.55,
                      child: const Animasi_Kanan_Kiri(
                          judul:
                              'Patients get notifications of queue movements so they can adjust their arrival schedule to the hospital. '
                              'Arrivals close to this service time will have an impact on reducing the crowd of people queuing at the hospital. '
                              'Queue information is integrated with the queue display panel in the hospital.'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50,),
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
                              'assets/icons/why3.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'SELF-REGISTRATION THROUGH MOBILE APPLICATION OR KIOSK',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 17,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.55,
                        child: const Animasi_Kanan_Kiri(
                            judul:
                                'Patients can self-register through a mobile application or kiosk, '
                                'thereby reducing queues at the hospital.'))
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                              'assets/icons/why4.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'MULTI CHANNEL PAYMENT',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 17,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.3,
                        child: ShowUpAnimation(
                          delayStart: const Duration(seconds: 1),
                          curve: Curves.decelerate,
                          direction: Direction.horizontal,
                          child: SizedBox(
                            height: screenSize.height * 0.4,
                            child: Text(
                              'Acceptance of payments can be done easily and flexibly with the availability of '
                              'online payment systems (credit cards, transfers, digital-wallet).',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  height: 1.4),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(width: 50,),
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
                              'assets/icons/why4.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'DRUG DELIVERY',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 17,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.3,
                        child: ShowUpAnimation(
                          delayStart: const Duration(seconds: 1),
                          curve: Curves.decelerate,
                          direction: Direction.horizontal,
                          child: SizedBox(
                            height: screenSize.height * 0.40,
                            child: Text(
                              'Drug delivery works in collaboration with goods delivery service providers '
                              'which are currently developing fast.',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  height: 1.4),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(width: 50,),
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
                              'assets/icons/why4.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'OTHER FEATURES',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 17,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.3,
                        child: ShowUpAnimation(
                          delayStart: const Duration(seconds: 1),
                          curve: Curves.decelerate,
                          direction: Direction.horizontal,
                          child: SizedBox(
                            height: screenSize.height * 0.42,
                            child: Text(
                              'Online consultation (to be integrated with the current RSSC system), '
                              'Emergency assistance to call ambulances and doctors, '
                              'Rating by consumers for each service',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  height: 1.4),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
