import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  static const String routeName = '/screenB';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Screen B',
              style: Theme.of(context).textTheme.headline2,
            ),
            ElevatedButton(
              onPressed: () => _goBack(context),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }

  void _goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
