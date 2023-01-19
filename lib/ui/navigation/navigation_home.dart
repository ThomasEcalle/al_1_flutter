import 'package:al_1/ui/navigation/screen_a.dart';
import 'package:al_1/ui/navigation/screen_b.dart';
import 'package:al_1/ui/navigation/screen_c.dart';
import 'package:flutter/material.dart';

class NavigationHome extends StatelessWidget {
  const NavigationHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToScreenA(context),
              child: const Text('Go to screen A'),
            ),
            ElevatedButton(
              onPressed: () => _goToScreenB(context),
              child: const Text('Go to screen B'),
            ),
            ElevatedButton(
              onPressed: () => _goToScreenC(context),
              child: const Text('Go to screen C'),
            ),
          ],
        ),
      ),
    );
  }

  void _goToScreenA(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ScreenA(),
      ),
    );
  }

  void _goToScreenB(BuildContext context) {
    Navigator.of(context).pushNamed(ScreenB.routeName);
  }

  void _goToScreenC(BuildContext context) {
    ScreenC.navigateTo(context, id: 42);
  }
}
