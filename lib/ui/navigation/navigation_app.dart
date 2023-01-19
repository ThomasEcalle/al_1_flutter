import 'package:al_1/ui/navigation/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: MyRouter.routes(),
      onGenerateRoute: MyRouter.getRouter,
    );
  }
}
