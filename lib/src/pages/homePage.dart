// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:second_project/src/pages/alert_page.dart';
import 'package:second_project/src/pages/providers/menuProviders.dart';
import 'package:second_project/utils/icon_String.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);

    // return ListView(
    //   children: _crearItems(),
    // );

    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            //se envian el snapshot del data y ademas el context para el context
            //poder decir cual es la pagina actual y cual es la siguiente
            //para la navegacion
            children: _listaItems(snapshot.data!, context),
          );
        });
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    if (data == null) {
      return [];
    }

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        subtitle: Text(opt['ruta']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          // Navegación basica
          //routeName es el nombre de mi nuevo widget
          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPager();
          // });
          // Navigator.push(context, route);
        },
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;
  }
}
