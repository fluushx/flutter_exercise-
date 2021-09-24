// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Page')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[cardaTipo()],
      ),
    );
  }

  Widget cardaTipo() {
    return Card(
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text('Soy el titulo de esta tarjeta'),
          subtitle: Text(
              'en este soy una descripcion de la misma tarjeta, solo que tengo un texto mas largo'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(onPressed: () {}, child: Text('Comprar')),
            TextButton(onPressed: () {}, child: Text('Cancelar')),
          ],
        ),
      ]),
    );
  }
}
