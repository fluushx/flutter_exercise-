// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_project/src/pages/homePage.dart';
import 'routes/routes.dart';
import 'src/pages/alert_page.dart';
import 'src/pages/avatar_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English, no country code
        Locale('es', 'ES'), // Spanish, no country code
      ],
      // home: HomePage(),

      //se definen rutas para que se pueda navegar entre paginas segun el json
      initialRoute: '/',
      routes: getAplicationsRoutes(),

      //se generan las rutas
      onGenerateRoute: (settings) {
        print('$settings.name');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
