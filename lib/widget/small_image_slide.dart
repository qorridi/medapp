import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/solution1.jpg',
  'assets/images/solution2.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: const EdgeInsets.all(2.0),
    child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(1.0)),
        child: Stack(
          children: <Widget> [
            Image.asset(
              item,
              fit: BoxFit.fill,
              width: 720,
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

class SmallVerticalSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Container(
            width: screenSize.width,
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
              ),
              items: imageSliders,
            ),
          ),
        ),
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  width: 45,
                  child: ElevatedButton(
                    onPressed: () => _controller.previousPage(),
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    child: const Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: 45,
                  child: ElevatedButton(
                    onPressed: () => _controller.nextPage(),
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    child: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
