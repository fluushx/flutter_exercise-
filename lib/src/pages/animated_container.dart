import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedCointanerPage extends StatefulWidget {
  AnimatedCointanerPage({Key? key}) : super(key: key);

  @override
  _AnimatedCointanerPageState createState() => _AnimatedCointanerPageState();
}

class _AnimatedCointanerPageState extends State<AnimatedCointanerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = new BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          curve: Curves.bounceInOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cambiarForma,
        child: Icon(Icons.change_circle),
      ),
    );
  }

  void cambiarForma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromARGB(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
