import 'package:flutter/material.dart';
import 'package:preferenciauser/src/MyApp.dart';
import 'package:preferenciauser/src/Share_prefs/preferencia_usuario.dart';

void main() async {
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}
