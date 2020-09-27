import 'package:flutter/material.dart';
import 'package:stackedDrunk/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart' as Router;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s get Drunk together',
      initialRoute: Router.Routes.startMenuView,
      onGenerateRoute: Router.Router(),
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
