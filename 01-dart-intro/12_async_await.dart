void main() async {
  print('Inicio');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print(value);
  } on Exception catch (err) {
    print('Tenemos una exception: $err');
  } catch (err) {
//     throw 'Error en la peticion: $err';
    print('Oops algo terrible paso: $err');
  } finally {
    print('Fin del try y el catch');
  }

//    httpGet('https://fernando-herrera.com/cursos').then((value) {
//     print(value);
//   }).catchError((err) {
//     print("Error: $err");
//   });

  print('Fin');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en el URL');
//   throw 'Error en la peticion';
//   return 'Respuesta de la peticion http';
}
