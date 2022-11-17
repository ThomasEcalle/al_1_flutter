import 'package:al_1/ui/stateful_exercises/two/square.dart';
import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Square(
          color: _color,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: _onTap,
        child: const Icon(Icons.edit),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.red ? Colors.yellow : Colors.red;
    });
  }
}
