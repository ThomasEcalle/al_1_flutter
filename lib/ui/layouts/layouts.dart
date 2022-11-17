import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        RedSquare(),
        RedSquare(),
        RedSquare(),
        RedSquare(),
      ],
    );
  }
}

class RedSquare extends StatelessWidget {
  const RedSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      color: Colors.red,
    );
  }
}
