import 'package:flutter/material.dart';

class ClickableSquare extends StatelessWidget {
  final VoidCallback onTap;

  const ClickableSquare({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        width: 200,
        color: Colors.amber,
      ),
    );
  }
}
