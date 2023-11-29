import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tu_inventario_movil/view/Login.dart';

class cuentaCreada extends StatelessWidget {
  const cuentaCreada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4028FC),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Center(child: SvgPicture.asset('images/terminate-user.svg')),
        ),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: const EdgeInsets.only(left: 2.0, right: 20),
          child: Center(
            child: Text(
              "Cuenta creada exitosamente",
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'ubuntu-medium',
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 50),
          child: Center(
              child: Text(
            "Bienvenido a Tu Inventario Movil inicia sesion para continuar",
            style: TextStyle(
                fontSize: 17, fontFamily: 'inter', color: Colors.white),
            textAlign: TextAlign.center,
          )),
        ),
        Center(
          child: SizedBox(
            height: 45,
            width: 300,
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 17, fontFamily: 'inter-semibold'),
                foregroundColor: Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: const Text('Iniciar Sesión'),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
          width: double.infinity,
        ),
      ]),
    );
  }
}
