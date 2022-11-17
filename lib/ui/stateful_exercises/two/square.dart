import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final Color color;

  const Square({
    Key? key,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: color,
    );
  }
}
