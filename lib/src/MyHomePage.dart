import 'package:flutter/material.dart';
import 'package:preferenciauser/src/Share_prefs/preferencia_usuario.dart';
import 'package:preferenciauser/src/setting.dart';
import 'package:preferenciauser/src/widget/menu_widget.dart';

class MyHomePage extends StatelessWidget {
  static const String routeName = 'Home';

  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final prefs = PreferenciasUsuario();
    prefs.ultimapagina = routeName;
    return Scaffold(
      backgroundColor: Color(0xff74459c),
      appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(routeName),
          backgroundColor: Color(0xffff0c0c)),
      drawer: MenuWidget(),
      body: Column(
        children: [
          Container(
            child: Text('Barberia Coyote',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold)),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 15),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
            child: Text(
                "¡Bienvenido ${prefs.nombre}!, conoce de nuestros mejores barberos: ",
                style: TextStyle(
                    color: Color(0xff3b3b3b),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold)),
          ),
          Column(
            children: [
              Container(
                width: 250,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color(0xfff13636),
                      Color(0xff383cba),
                      Color(0xffd9cef2)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10, top: 15, left: 8),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img/perfil.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 5, top: 25),
                          child: Text(
                            'Juan Lopez Cruz',
                            style: TextStyle(
                                color: Color(0xff690000),
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w200),
                          )),
                    ],
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Veterano barbero que nos acompaña desde el inicio de esta empresa',
                        style: TextStyle(
                            color: Color(0xff292828),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
              )
            ],
          ),
          Column(
            children: [
              Container(
                width: 250,
                height: 130,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color(0xfff13636),
                      Color(0xff383cba),
                      Color(0xffd9cef2)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10, top: 15, left: 8),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img/Daddy.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 5, top: 25),
                          child: Text(
                            'Daddy Yankee',
                            style: TextStyle(
                                color: Color(0xff690000),
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w200),
                          )),
                    ],
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'No, no es Daddy Yankee, pero te va a dejar el pelo como una de sus canciones con su gran conocimiento en estilos',
                        style: TextStyle(
                            color: Color(0xff292828),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 0, top: 20),
                child: Text("SERVICIOS",
                    style: TextStyle(
                        fontFamily: "Reboto",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                  child: Column(
                children: [
                  Row(children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 10, top: 15, left: 8),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/img/pelo.png'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: 300,
                      height: 70,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 0, top: 0),
                      child: Text(
                          "Corte de pelo para hombre: 25000COP, esto incluye cualquier corte por más dificil que sea (NO INCLUYE PERSONALIZADOS)",
                          style: TextStyle(
                              fontFamily: "Reboto",
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    )
                  ])
                ],
              )),
              Container(
                  child: Column(
                children: [
                  Row(children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 10, top: 15, left: 8),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/img/tipo2.png'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: 300,
                      height: 70,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 0, top: 0),
                      child: Text(
                          "Corte de Barba para hombre: 20000COP, esto incluye cualquier corte de Barba por más dificil que sea (NO INCLUYE PERSONALIZADOS)",
                          style: TextStyle(
                              fontFamily: "Reboto",
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    )
                  ])
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
