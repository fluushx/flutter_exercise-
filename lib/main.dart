// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_project/src/pages/homePage.dart';
import 'src/pages/alert_page.dart';
import 'src/pages/avatar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        // home: HomePage(),

        //se definen rutas para que se pueda navegar entre paginas segun el json
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomePage(),
          'alert': (BuildContext context) => AlertPage(),
          'avatar': (BuildContext context) => AvatarPage(),
        });
  }
}
