import 'package:flutter/material.dart';
import 'package:preferenciauser/src/setting.dart';

import 'MyHomePage.dart';
import 'Share_prefs/preferencia_usuario.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, PreferenciasUsuario? perfs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prefs = PreferenciasUsuario();
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      //initialRoute: MyHomePage.routeName,
      initialRoute: prefs.ultimapagina,
      routes: {
        MyHomePage.routeName: (BuildContext context) => const MyHomePage(),
        Settinguser.routeName: (context) => const Settinguser()
      },
    );
  }
}
