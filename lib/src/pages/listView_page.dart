import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> data = [];
  int ultimoItem = 0;

  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10Imagenes();

    _scrollController.addListener(() {
      print("scroool");
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregar10Imagenes();
        _fecthData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Page'),
      ),
      body: Stack(
        children: <Widget>[
          _crearListas(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearListas() {
    //builder metodo encargado de redibujar el widget
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          final image = data[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage('https://picsum.photos/id/${image}/500/300'),
          );
        },
      ),
    );
  }

  void _agregar10Imagenes() {
    for (var i = 0; i < 10; i++) {
      ultimoItem++;

      setState(() {
        data.add(ultimoItem);
      });
    }
  }

  Future _fecthData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    _agregar10Imagenes();
  }

  _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(height: 150)
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> obtenerPagina1() async {
    final duration = Duration(seconds: 2);
    new Timer(
        duration, () => {data.clear(), ultimoItem++, _agregar10Imagenes()});

    return Future.delayed(duration);
  }
}
