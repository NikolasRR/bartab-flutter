import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(139, 69, 19, 1),
      title: const Text("BarTab",
          style:
              TextStyle(color: Color.fromRGBO(255, 215, 0, 1), fontSize: 40)),
      centerTitle: true,
    );
  }
}