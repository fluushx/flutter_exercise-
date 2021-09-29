// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_project/src/pages/alert_page.dart';
import 'package:second_project/src/pages/animated_container.dart';
import 'package:second_project/src/pages/avatar_page.dart';
import 'package:second_project/src/pages/card_page.dart';
import 'package:second_project/src/pages/homePage.dart';
import 'package:second_project/src/pages/input_page.dart';
import 'package:second_project/src/pages/listView_page.dart';
import 'package:second_project/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getAplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedCointanerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'listViewPage': (BuildContext context) => ListViewPage(),
  };
}
