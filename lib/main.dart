import 'package:flutter/material.dart';

void main() => runApp(const MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Victor Alemán Hidalgo"),
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 30),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra el contenido verticalmente
            children: <Widget>[
              Text(
                'Victor Aleman Hidalgo. Mat: 22308051281123',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle:
                        FontStyle.italic, // Ajusta el estilo del subtítulo
                    color: Color(0xff00cdff)),
              ),
              // Primera fila
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithLabel(
                      icon: Icons.star,
                      label: 'Estrella',
                      color: Colors.yellow),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.favorite,
                      label: 'Favorito',
                      color: Colors.red),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.access_alarm_rounded,
                      label: 'Reloj',
                      color: Colors.blue),
                ],
              ),
              SizedBox(height: 20.0), // Espacio entre las filas
              // Segunda fila
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithLabel2(
                      icon: Icons.add_a_photo,
                      label: 'Camara',
                      color: Colors.purple),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel2(
                      icon: Icons.airline_seat_recline_normal,
                      label: 'Asiento',
                      color: Colors.green),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel2(
                      icon: Icons.youtube_searched_for,
                      label: 'Buscador',
                      color: Colors.orange),
                ],
              ),
              SizedBox(height: 20.0), // Espacio entre las filas
              // Tercera fila
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithLabel(
                      icon: Icons.account_circle,
                      label: 'Usuario',
                      color: Colors.teal),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.tab_outlined,
                      label: 'Ventana',
                      color: Colors.indigo),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.backpack,
                      label: 'Mochila',
                      color: Colors.brown),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un icono con subtítulo
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel(
      {required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Icono con color personalizado
        const SizedBox(height: 8.0), // Espacio entre el icono y el texto
        Text(label, style: const TextStyle(fontSize: 16.0)), // Subtítulo
      ],
    );
  }
}

// Widget personalizado para un icono con subtítulo
class IconWithLabel2 extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel2(
      {required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Icono con color personalizado
        const SizedBox(height: 8.0), // Espacio entre el icono y el texto
        Text(label, style: const TextStyle(fontSize: 16.0)), // Subtítulo
      ],
    );
  }
}
