import 'package:flutter/material.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  Color _color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _onTap,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.amber ? Colors.pink : Colors.amber;
    });
  }
}
