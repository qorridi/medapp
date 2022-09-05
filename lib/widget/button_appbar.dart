import 'package:flutter/material.dart';



class ButtonAppbar_baru extends StatelessWidget {
  const ButtonAppbar_baru(
      {Key? key, required this.arah, required this.menu, required this.warna})
      : super(key: key);
  final String menu;
  final String arah;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, arah);
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered))
                  // ignore: curly_braces_in_flow_control_structures
                  return Colors.blue;
                return warna; // null throus error in flutter 2.2+.
              }),
        ),
        child: Text(
          menu,
          style: const TextStyle(
            fontSize: 18,
            letterSpacing: 1.1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}