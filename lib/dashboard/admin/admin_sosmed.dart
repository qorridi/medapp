import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp_eksad/api/sosmed_api.dart';

class SosmedDashboard extends StatefulWidget {
  const SosmedDashboard({Key? key}) : super(key: key);

  @override
  State<SosmedDashboard> createState() => _SosmedDashboardState();
}

class _SosmedDashboardState extends State<SosmedDashboard> {
  var btnText = 'Save Setting';
  var enb = true;
  final formKey = GlobalKey<FormState>();

  //TextEditingController waController = new TextEditingController();
  final waController = TextEditingController();
  final linkedController = TextEditingController();
  final twitterController = TextEditingController();
  final igController = TextEditingController();
  final youtubeController = TextEditingController();


  String wa = '';
  String ln = '';
  String tw ='';
  String ig = '';
  String yt = '';

  String pattern = r'(\62)(\d{2,3})?\)?[ .-]?\d{2,4}[ .-]?\d{2,4}[ .-]?\d{2,4}';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromRGBO(238, 224, 224, 1),
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.05,
          vertical: screenSize.height * 0.04),
      child: Container(
        width: screenSize.width,
        height: screenSize.height * 0.8,
        padding:
            const EdgeInsets.only(left: 30, top: 15, right: 30, bottom: 15),
        color: Colors.white,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Social Media Setting",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.1)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      primary: const Color.fromARGB(255, 0, 67, 192),
                    ),
                    onPressed: () async {
                      switch (btnText)  {
                        case 'Save Setting':

                          if (formKey.currentState!.validate()) {
                            // await updateSosmed(wa, ln, tw, ig, yt);
                            // await createSosmed(wa, ln, tw, ig, yt);
                            await createWA(wa);
                            await createLN(ln);
                            await createTW(tw);
                            await createIG(ig);
                            await createYT(yt);

                            ScaffoldMessenger.of(context).showSnackBar(

                                const SnackBar(
                                  content: Text('Data Saved'),
                                  backgroundColor: Colors.green)

                            );
                          }else if(formKey.currentState!.validate()){}
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(

                                const SnackBar(
                                    content: Text('Failed to save data, please edit all field'),
                                    backgroundColor: Colors.red)

                            );
                          }

                          // waController.clear();
                          // linkedController.clear();
                          // twitterController.clear();
                          // igController.clear();
                          // youtubeController.clear();
                          // createSetting(im.toString(), tt.toString(),
                          //     tl.toString(), em.toString(), no.toString());
                          setState(() {
                            btnText = 'Update Setting';
                            enb = false;
                          }

                          );
                          break;
                        case 'Update Setting':
                        // waController.clear();
                        // linkedController.clear();
                        // twitterController.clear();
                        // igController.clear();
                        // youtubeController.clear();
                          setState(() {
                            enb = true;
                            btnText = 'Save Update';
                          });
                          break;
                        case 'Save Update':
                          if (formKey.currentState!.validate()) {
                            // await updateSosmed(wa, ln, tw, ig, yt);
                            // await createSosmed(wa, ln, tw, ig, yt);
                            await createWA(wa);
                            await createLN(ln);
                            await createTW(tw);
                            await createIG(ig);
                            await createYT(yt);

                            ScaffoldMessenger.of(context).showSnackBar(

                                const SnackBar(
                                    content: Text('Data Saved'),
                                    backgroundColor: Colors.green)

                            );
                          }else if(formKey.currentState!.validate()){}
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(

                                const SnackBar(
                                    content: Text('Failed to save data, please edit all field'),
                                    backgroundColor: Colors.red)

                            );
                          }
                          break;
                        default:

                      }
                    },
                    child: Text(
                      btnText,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
                // indent: 20,
                // endIndent: 0,
                color: Colors.grey,
              ),
          //    Text('Data Must Be Edited'),
           //   Text('For data that is not modified, Please copy last data , delete then paste again'),

              const SizedBox(
                height: 10,
              ),
              // FutureBuilder<List<dynamic>>(
              //   future: getSosmedDesc(),
              //   builder: (BuildContext context, AsyncSnapshot snapshot) {
              //     var pgm = snapshot.data[0];
              //
              //     if (snapshot.hasError ||
              //         snapshot.data == null ||
              //         snapshot.connectionState == ConnectionState.waiting) {
              //       return const CircularProgressIndicator();
              //     }
              //     return
              //   },
              // ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FutureBuilder<List<dynamic>>(
                future: getWaDesc(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var pgm = snapshot.data[0];

                  if (snapshot.hasError ||
                      snapshot.data == null ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return listsosmed(
                      const Icon(
                                  Icons.whatsapp,
                                  color: Colors.green,
                                ),
                                TextFormField(
                                  controller: waController..text = pgm['whatsapp'],

                                  //initialValue: pgm['whatsapp'],

                                  decoration: const InputDecoration(
                                    errorStyle: TextStyle(color: Colors.red),
                                    hintText:
                                    'Enter WhatsApp number without +,   Ex : 6280000000000 ',
                                    helperText: 'Enter WhatsApp number without +,   Ex : 6280000000000 ',
                                  ),

                                  onChanged: (value) => wa = value,
                                  enabled: enb,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your phone number';
                                    }else if(!RegExp(pattern).hasMatch(value)){
                                      return 'Please enter with 628 only';
                                    }
                                    return null;
                                  },
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context)=>
                                            AlertDialog(
                                                content:Text('Active WA : '+pgm['whatsapp'])
                                            ) ,
                                      );
                                    }, child: const Text('View Active')));
                },
              ),

              const SizedBox(
                height: 10,
              ),
              FutureBuilder<List<dynamic>>(
                future: getLnDesc(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var pgm = snapshot.data[0];

                  if (snapshot.hasError ||
                      snapshot.data == null ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return listsosmed(
                      const Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.blue,
                                ),
                                TextFormField(
                                  controller: linkedController..text = pgm['linkedin'],
                                  //initialValue: pgm['linkedin'],
                                  decoration: const InputDecoration(
                                      errorStyle: TextStyle(color: Colors.red),
                                      hintText: 'Enter a new Linkedin link address'),
                                  onChanged: (value) => ln = value,
                                  enabled: enb,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter linkedin link';
                                    }
                                    return null;
                                  },
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context)=>
                                            AlertDialog(
                                                content:Text('Active Linkedin : '+pgm['linkedin'])
                                            ) ,
                                      );
                                    }, child: const Text('View Active')));
                },
              ),

              const SizedBox(
                height: 10,
              ),
              FutureBuilder<List<dynamic>>(
                future: getTwDesc(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var pgm = snapshot.data[0];

                  if (snapshot.hasError ||
                      snapshot.data == null ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return listsosmed(
                      const Icon(
                                  FontAwesomeIcons.twitterSquare,
                                  color: Colors.blueAccent,
                                ),

                                TextFormField(
                                  controller: twitterController..text = pgm['twitter'],
                                  //initialValue: pgm['twitter'],
                                  decoration: const InputDecoration(
                                      errorStyle: TextStyle(color: Colors.red),
                                      hintText: 'Enter a new Twitter link address'),
                                  onChanged: (value) => tw = value,
                                  enabled: enb,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter twitter link';
                                    }
                                    return null;
                                  },
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context)=>
                                            AlertDialog(
                                                content:Text('Active Twitter : '+pgm['twitter'])
                                            ) ,
                                      );
                                    }, child: const Text('View Active')));
                },
              ),

              const SizedBox(
                height: 10,
              ),
              FutureBuilder<List<dynamic>>(
                future: getIgDesc(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var pgm = snapshot.data[0];

                  if (snapshot.hasError ||
                      snapshot.data == null ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return  listsosmed(
                      const Icon(
                                  FontAwesomeIcons.instagramSquare,
                                  color: Colors.pink,
                                ),
                                TextFormField(
                                  controller: igController..text = pgm['instagram'],
                                  // initialValue: pgm['instagram'],
                                  decoration: const InputDecoration(
                                      errorStyle: TextStyle(color: Colors.red),
                                      hintText: 'Enter a new Instagram link address'),
                                  onChanged: (value) => ig = value,
                                  enabled: enb,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter instagram link';
                                    }
                                    return null;
                                  },
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context)=>
                                            AlertDialog(
                                                content:Text('Active Instagram : '+pgm['instagram'])
                                            ) ,
                                      );
                                    }, child: const Text('View Active')));
                },
              ),

              const SizedBox(
                height: 10,
              ),
              FutureBuilder<List<dynamic>>(
                future: getYtDesc(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var pgm = snapshot.data[0];

                  if (snapshot.hasError ||
                      snapshot.data == null ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return listsosmed(
                      const Icon(
                                  FontAwesomeIcons.youtube,
                                  color: Colors.red,
                                ),
                                TextFormField(
                                  controller: youtubeController..text =  pgm['youtube'],
                                  //initialValue: pgm['youtube'],
                                  decoration: const InputDecoration(
                                      errorStyle: TextStyle(color: Colors.red),
                                      hintText: 'Enter a new Youtube link address'),
                                  onChanged: (value) => yt = value,
                                  enabled: enb,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter youtube link';
                                    }
                                    return null;
                                  },
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context)=>
                                            AlertDialog(
                                                content:Text('Active Youtube : '+pgm['youtube'])
                                            ) ,
                                      );
                                    }, child: const Text('View Active')));
                },
              ),
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}

ListTile listsosmed(Icon icon, Widget field, Widget button) {
  return ListTile(
    leading: icon,
    title: field,
    trailing: button,
  );
}
