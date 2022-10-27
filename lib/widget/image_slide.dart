import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/Slide1.PNG',
  'assets/images/Slide2.PNG',
  'assets/images/Slide3.PNG',
  'assets/images/Slide4.PNG',
  'assets/images/Slide5.PNG',
  'assets/images/Slide6.PNG',
  'assets/images/Slide7.PNG',
  'assets/images/Slide8.PNG',
  'assets/images/Slide9.PNG',
  'assets/images/Slide10.PNG',
  'assets/images/Slide11.PNG'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 840,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        // padding: const EdgeInsets.symmetric(
                        //     vertical: 10.0, horizontal: 20.0),
                        // child: const Text(
                        //   'Bootcamp',
                        //   //'No. ${imgList.indexOf(item)} image',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 20.0,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
final CarouselController _controller = CarouselController();
@override
void initState() {
  initState();
}

class VerticalSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width * 0.8,
          child: CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: false,
            ),
            items: imageSliders,
          ),
        ),
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: ElevatedButton(
                  onPressed: () => _controller.previousPage(),
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                ),
              ),
              Flexible(
                child: ElevatedButton(
                  onPressed: () => _controller.nextPage(),
                  child: Icon(Icons.arrow_forward_ios_outlined),
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
