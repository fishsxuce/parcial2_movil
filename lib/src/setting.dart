// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:preferenciauser/src/Share_prefs/preferencia_usuario.dart';
import 'package:preferenciauser/src/widget/menu_widget.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class Settinguser extends StatefulWidget {
  static const String routeName = 'Ajustes';

  const Settinguser({super.key});

  @override
  State<Settinguser> createState() => _SettinguserState();
}

class _SettinguserState extends State<Settinguser> {
  bool _colorsecundario = true;
  late int _sexo;
  late final String _nombre;
  late final String _fecha;
  late TextEditingController _textController;
  late TextEditingController _textController2;
  final prefs = PreferenciasUsuario();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sexo = prefs.sexo;
    _nombre = prefs.nombre;
    _fecha = prefs.fecha;
    prefs.ultimapagina = Settinguser.routeName;
    _textController = TextEditingController(text: _nombre);
    _textController2 = TextEditingController(text: _fecha);
  }

  /* cargarPreferencia() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _sexo = prefs.getInt('sexo') as int;
    setState(() {});
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // The title text which will be shown on the action bar
            title: Text(Settinguser.routeName),
            backgroundColor: Color(0xffff0101)),
        drawer: MenuWidget(),
        body: ListView(
          children: [
            Container(
              alignment: AlignmentDirectional.center,
              padding: EdgeInsets.all(5),
              child: Text('Solicitar Cita',
                  style:
                      TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold)),
            ),
            Divider(),
            RadioListTile(
                value: 1,
                title: Text('Corte de Pelo'),
                groupValue: _sexo,
                onChanged: _setSelectedRadio),
            RadioListTile(
                value: 2,
                title: Text('Corte de Barba'),
                groupValue: _sexo,
                onChanged: _setSelectedRadio),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText:
                        'Nombre del cliente para la cita de la barberia'),
                onChanged: (value) {
                  prefs.nombre = value;

                  return print(value);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textController2,
                decoration: InputDecoration(labelText: 'Fecha', helperText: ''),
                onChanged: (value) {
                  prefs.fecha = value;

                  return print(value);
                },
              ),
            )
          ],
        ));
  }

  _setSelectedRadio(int? value) /*async*/ {
    //final SharedPreferences prefs = await SharedPreferences.getInstance();
    _sexo = value as int;
    //prefs.setInt('sexo', _sexo);
    prefs.sexo = _sexo;
    setState(() {});
  }
}
