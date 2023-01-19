import 'package:al_1/ui/navigation/screen_not_found.dart';
import 'package:flutter/material.dart';

import 'navigation_home.dart';
import 'screen_b.dart';
import 'screen_c.dart';

class MyRouter {
  static Map<String, Widget Function(BuildContext context)> routes() {
    return {
      '/': (BuildContext context) => const NavigationHome(),
      ScreenB.routeName: (BuildContext context) => const ScreenB(),
    };
  }

  static MaterialPageRoute getRouter(RouteSettings settings) {
    Widget screen = const ScreenNotFound();

    switch (settings.name) {
      case ScreenC.routeName:
        final arguments = settings.arguments;
        if (arguments is int) {
          screen = ScreenC(id: arguments);
        }
        break;
    }

    return MaterialPageRoute(builder: (context) => screen);
  }
}
