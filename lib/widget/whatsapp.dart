import 'package:flutter/material.dart';
import 'package:medapp_eksad/api/sosmed_api.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:spring/spring.dart';

class WAChat extends StatelessWidget {
  WAChat({Key? key}) : super(key: key);

  void launchWhatsApp({
    required final String phone,
    required String message,
  }) async {
    String url() {
      return "https://api.whatsapp.com/send?phone=$phone&text=${Uri.parse(message)}";
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  final SpringController springController =
      SpringController(initialAnim: Motion.play);
  String wa = '';

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.green,
       child: FutureBuilder<List<dynamic>>(
        future: getWaDesc(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          var pgm = snapshot.data[0];
          return GestureDetector(
            onTap: () {
              wa = pgm['whatsapp'];
              springController.play(
                  motion: Motion.reverse,
                  animDuration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInBack,
                  delay: const Duration(milliseconds: 100));
              launchWhatsApp(
                  phone: wa,
                  message:
                  'Hallo, saya tertarik dan saya ingin tahu lebih lanjut tentang program Medapp dari EKSAD');
            },
            child: Spring.rotate(
              endAngle: 360 * 10,
              animDuration: const Duration(seconds: 3 * 10),
              springController: springController,
              alignment: Alignment.center,
              animStatus: (AnimStatus status) {},
              child: const Icon(Icons.whatsapp, size: 30),
            ),
          );
        },
      ),
    );
  }
}
