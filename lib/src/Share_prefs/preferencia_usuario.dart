import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
/***
 * patron singlenton
 */
  late SharedPreferences _perfs;

  initPrefs() async {
    _perfs = await SharedPreferences.getInstance();
  }

  static final PreferenciasUsuario _instancia = PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }
  PreferenciasUsuario._internal();

  late int _sexo;
  late String _nombre;
  late String _fecha;

  int get sexo => _perfs.getInt('sexo') ?? 1;

  set sexo(int value) => _perfs.setInt('sexo', value);

  String get nombre => _perfs.getString('nombre') ?? "";

  set nombre(String value) => _perfs.setString('nombre', value);

  String get fecha => _perfs.getString('fecha') ?? "";

  set fecha(String value) => _perfs.setString('fecha', value);

  String get ultimapagina => _perfs.getString('ultimapagina') ?? "Home";

  set ultimapagina(String value) => _perfs.setString('ultimapagina', value);
}
