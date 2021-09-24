import 'package:flutter/material.dart';
import 'package:second_project/src/pages/alert_page.dart';
import 'package:second_project/src/pages/avatar_page.dart';
import 'package:second_project/src/pages/card_page.dart';
import 'package:second_project/src/pages/homePage.dart';

Map<String, WidgetBuilder> getAplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
