import 'package:flutter/material.dart';

import '../ui/views/field/field_view.dart';
import '../ui/views/market/market_view.dart';
import '../ui/views/startMenu/startMenu_view.dart';
import 'constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case startMenuScreen:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: StartMenuView(),
      );
    case marketView:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: MarktView(),
      );
    case fieldView:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: FieldView(),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}
