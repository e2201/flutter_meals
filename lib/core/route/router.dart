import '../../ui/pages/error/error.dart';

import '../../ui/pages/detail/detail.dart';
import '../../ui/pages/filter/filter.dart';
import '../../ui/pages/main/main.dart';
import '../../ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';

class HYRouter {
  static final String initialRoute = HYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
    HYMealScreen.routeName: (ctx) => HYMealScreen(),
    HYDetailScreen.routeName: (ctx) => HYDetailScreen()
  };

  static final RouteFactory generateRoute = (settings) {
    if (settings.name == HYFilterScreen.routeName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return HYFilterScreen();
          },
          fullscreenDialog: true);
    }

    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    if (settings.name == HYErrorScreen.routeName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return HYErrorScreen();
          },
          fullscreenDialog: true);
    }

    return null;
  };
}
