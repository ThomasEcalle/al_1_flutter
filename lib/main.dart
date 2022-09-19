import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.orange,
  ));
}

class User {
  final String firstName;
  final int? age;

  User({
    required this.firstName,
    this.age,
  });  
}
