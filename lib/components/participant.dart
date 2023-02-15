import 'package:flutter/material.dart';

class Participant extends StatelessWidget {
  final String name;

  const Participant({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        const Icon(
          Icons.one_x_mobiledata,
          color: Color.fromRGBO(249, 86, 54, 1),
        )
      ],
    );
  }
}