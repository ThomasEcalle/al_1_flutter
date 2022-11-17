import 'package:al_1/ui/stateful_exercises/three/clickable_square.dart';
import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  Color _backGroundColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      body: Center(
        child: ClickableSquare(
          onTap: _onTap,
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _backGroundColor = _backGroundColor == Colors.red ? Colors.blue : Colors.red;
    });
  }
}
