// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/field/field_view.dart';
import '../ui/views/startMenu/startMenu_view.dart';

class Routes {
  static const String startMenuView = '/StartMenuView';
  static const String fieldView = '/FieldView';
  static const all = <String>{
    startMenuView,
    fieldView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startMenuView, page: StartMenuView),
    RouteDef(Routes.fieldView, page: FieldView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartMenuView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartMenuView(),
        settings: data,
      );
    },
    FieldView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FieldView(),
        settings: data,
      );
    },
  };
}
