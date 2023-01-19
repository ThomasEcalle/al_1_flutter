import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  static const String routeName = '/screenC';

  static void navigateTo(BuildContext context, {required int id}) {
    Navigator.of(context).pushNamed(routeName, arguments: id);
  }

  final int id;

  const ScreenC({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Screen C with id: $id',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
