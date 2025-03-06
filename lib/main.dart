import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botones de distintas formas'),
          backgroundColor: Color(0xff7babfd),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Gabriel Alejandro Montes Hernandez mat:1276',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Ajusta el radio de las esquinas
                  ),
                ),
                onPressed: () {},
                child: const Text("Boton 1",
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 30,
              ),
              OctagonalButton(),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0x9702c5b1),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))
                      // Ajusta el radio de las esquinas
                      ),
                ),
                onPressed: () {},
                child: const Text("Boton 3",
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Ajusta el radio de las esquinas
                  ),
                ),
                onPressed: () {},
                child: const Text("Boton 4",
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffc8a60e),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
                      // Ajusta el radio de las esquinas
                      ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.radio_button_checked,
                    color: Colors.white), // Icono dentro del botón
                label: const Text("Boton",
                    style: TextStyle(
                        color: Colors.white)), // Texto dentro del botón
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange, // Color del botón
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Esquinas levemente redondeadas
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.thumb_up,
                    color: Colors.white), // Icono dentro del botón
                label: const Text("Like",
                    style: TextStyle(
                        color: Colors.white)), // Texto dentro del botón
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffff1100), // Color del botón
                  padding:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Esquinas levemente redondeadas
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.access_alarm,
                    color: Colors.white), // Icono dentro del botón
                label: const Text("Reloj",
                    style: TextStyle(
                        color: Colors.white)), // Texto dentro del botón
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, // Color del botón
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Esquinas levemente redondeadas
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.two_wheeler,
                    color: Colors.white), // Icono dentro del botón
                label: const Text("Moto",
                    style: TextStyle(
                        color: Colors.white)), // Texto dentro del botón
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 Botón con forma octagonal
class OctagonalButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OctagonClipper(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {},
        child: const Text("Boton 2", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

// 🔹 ClipPath para recortar el botón en forma de octágono
class OctagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    double cut = w * 0.1; // Ajusta este valor para definir los cortes

    return Path()
      ..moveTo(cut, 0) // Esquina superior izquierda
      ..lineTo(w - cut, 0) // Esquina superior derecha
      ..lineTo(w, cut) // Lado derecho superior
      ..lineTo(w, h - cut) // Lado derecho inferior
      ..lineTo(w - cut, h) // Esquina inferior derecha
      ..lineTo(cut, h) // Esquina inferior izquierda
      ..lineTo(0, h - cut) // Lado izquierdo inferior
      ..lineTo(0, cut) // Lado izquierdo superior
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
