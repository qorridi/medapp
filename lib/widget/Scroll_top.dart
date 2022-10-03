import 'package:flutter/material.dart';


class ScrollUpButton extends StatefulWidget {
  const ScrollUpButton(this.controller);

  final ScrollController controller;

  @override
  _ScrollUpButtonState createState() => _ScrollUpButtonState();
}

class _ScrollUpButtonState extends State<ScrollUpButton> {
  bool _showScrollUp = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      if (widget.controller.position.pixels > 150 && !_showScrollUp) {
        setState(() {
          _showScrollUp = true;
        });
      } else if (widget.controller.position.pixels < 150 && _showScrollUp) {
        setState(() {
          _showScrollUp = false;
        });
      }
      // On GitHub there was a question on how to determine the event
      // of widget being scrolled to the bottom. Here's the sample
      // if (widget.controller.position.hasViewportDimension &&
      //     widget.controller.position.pixels >=
      //         widget.controller.position.maxScrollExtent - 0.01) {
      //   print('Scrolled to bottom');
      //}
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showScrollUp
        ? Positioned(
        right:20,
        bottom: 170,
        child: OutlinedButton(
          onPressed: () => widget.controller.animateTo(0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn),
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(30, 30)),
              backgroundColor: MaterialStateProperty.all(Colors.grey[50]),
              foregroundColor: MaterialStateProperty.all(Colors.black)),
          child: Icon(Icons.arrow_circle_up,color: Colors.grey,)
          //child: const Text('Go\nTop',textAlign: TextAlign.center,),
        ))
        : const SizedBox();
  }
}