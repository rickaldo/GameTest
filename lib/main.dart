import 'package:flutter/material.dart';
import 'package:stackedDrunk/app/constants.dart';
import 'package:stackedDrunk/ui/views/mainView/main_view.dart';
import 'services/navigation_service.dart' as nav;
import 'package:stackedDrunk/app/locator.dart';
import 'package:stackedDrunk/ui/views/startMenu/startMenu_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.dart' as Router;
import 'models/player.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s get Rich and the World drunk',
      onGenerateRoute: Router.generateRoute,
      navigatorKey: locator<nav.NavigationService>().navigationKey,
      home: MainView(),
    );
  }
}
