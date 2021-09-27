// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Page')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[cardaTipo(), SizedBox(height: 10.0), _cardTipo2()],
      ),
    );
  }

  Widget cardaTipo() {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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

  Widget _cardTipo2() {
    final card = Card(
      elevation: 8.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              image: NetworkImage(
                  'https://st2.depositphotos.com/1157740/9355/i/600/depositphotos_93550684-stock-photo-landscape-of-two-pagoda-on.jpg')),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Soy un container'),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.blue,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0))
        ],
      ),
      child: card,
    );
  }
}
