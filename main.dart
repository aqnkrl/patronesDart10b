import 'configuracion.dart';

void main(){
    var pantallaInicio = Configuracion('es');
    var pantallaPerfil = Configuracion('es');

    print('Idioma pantalla de inicio: ${pantallaInicio.idioma}');
    print('Idioma pantalla de perfil: ${pantallaPerfil.idioma}');

    pantallaInicio.idioma='en';

    print('Idioma pantalla de inicio: ${pantallaInicio.idioma}');
    print('Idioma pantalla de perfil: ${pantallaPerfil.idioma}');

    //Comprobar si son instansias iguales o diferentes
    print(identical(pantallaInicio, pantallaPerfil)); //false

}