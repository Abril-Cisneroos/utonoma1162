import 'package:flutter/material.dart';

void main() => runApp(const MiContenedorApp());

class MiContenedorApp extends StatelessWidget {
  const MiContenedorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Frida Abril Cisneros Hernandez"),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: Color(0xff4fa847),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primer contenedor: Borde negro
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              const SizedBox(width: 20), // Espacio entre los contenedores

              // Segundo contenedor: Color de fondo
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffec5b48),
                ),
              ),
              const SizedBox(width: 20), // Espacio entre los contenedores

              // Tercer contenedor: Imagen
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://raw.githubusercontent.com/Abril-Cisneroos/imagen_cont.5/main/buho-en-una-rama.jpg', // URL directa de la imagen
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
