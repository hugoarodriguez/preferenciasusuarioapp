import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario{

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  /*Ninguna de estas propiedades se usa, se colocan para saber que estas serán 
  las manipuladas en SettingsPage*/
  //bool _colorSecundario;
  //int _genero;
  //String _nombre;
  
  //GET y SET del Genero
  get genero{
    //El '??' signfica que si no existe un valor por defecto entonces se colocará un '1'
    return _prefs.get('genero') ?? 1;
  }

  set genero(int value){
    _prefs.setInt('genero', value);
  }

  //GET y SET del Color Secundario
  get colorSecundario{
    //El '??' signfica que si no existe un valor por defecto entonces se colocará un '1'
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value){
    _prefs.setBool('colorSecundario', value);
  }

  //GET y SET del Nombre
  get nombreUsuario{
    //El '??' signfica que si no existe un valor por defecto entonces se colocará un '1'
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value){
    _prefs.setString('nombreUsuario', value);
  }
  
  //GET y SET de la Última Página
  get ultimaPagina{
    //El '??' signfica que si no existe un valor por defecto entonces se colocará un '1'
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value){
    _prefs.setString('ultimaPagina', value);
  }

}