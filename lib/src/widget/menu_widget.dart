import 'package:flutter/material.dart';
import 'package:preferenciauser/src/MyHomePage.dart';

import 'package:preferenciauser/src/setting.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/img/barberia.png'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            color: Color(0xffbc1515),
            child: ListTile(
              leading: Icon(Icons.pages, color: Color(0xff5106ff)),
              title: Text('Barberia'),
              onTap: () {
                Navigator.pushReplacementNamed(context, MyHomePage.routeName);
              },
            ),
          ),
          Container(
            color: Color(0xff402a92),
            child: ListTile(
              leading: Icon(Icons.verified_user, color: Color(0xffff0000)),
              title: Text('Agendar Cita'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Settinguser.routeName);
              },
            ),
          ),
          Container(
            color: Color(0xffd22525),
          ),
        ],
      ),
    );
  }
}
