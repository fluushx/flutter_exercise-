import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 30.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Page')),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valueSlider,
      label: 'Tamano slider',
      min: 10,
      max: 400,
      onChanged: (valor) {
        setState(() {
          _valueSlider = valor;
          print(_valueSlider);
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://as01.epimg.net/meristation/imagenes/2021/09/17/noticias/1631890825_385155_1631891016_portada_normal.jpg'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (_bloquearCheck) ? null : (valor) {
    //       setState(() {
    //         _bloquearCheck = valor!;
    //       });
    //     });
    return CheckboxListTile(
        title: Text("Titulo para checkbox"),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text("Titulo para checkbox"),
        value: _bloquearCheck,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _bloquearCheck = valor;
                });
              });
  }
}
