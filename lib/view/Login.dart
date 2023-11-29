import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tu_inventario_movil/view/Singin/singin1.dart';
import 'package:tu_inventario_movil/view/home/navigator.dart';
import 'package:tu_inventario_movil/view/home/nuevo.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Center(
                child: SvgPicture.asset(
              'images/logo_login.svg',
              height: 80,
            )),
          ),
        ),
        const SizedBox(
          height: 50,
          width: double.infinity,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 0, left: 20),
          child: Row(
            children: [
              Text(
                'Nombre de Usuario',
                style: TextStyle(fontSize: 13, fontFamily: 'inter-medium'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: TextField(
            // controller: controladoremail,
            decoration: InputDecoration(
              hintText: 'Nombre de Usuario',
              hintStyle: const TextStyle(
                  fontSize: 17, color: Color(0xFF85838D), fontFamily: 'inter'),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF85838D)),
                  borderRadius: BorderRadius.circular(5)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 0, left: 20),
          child: Row(
            children: [
              Text(
                'Contraseña',
                style: TextStyle(fontSize: 13, fontFamily: 'inter-medium'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: TextField(
            // controller: controladoremail,
            decoration: InputDecoration(
              hintText: 'Contraseña',
              hintStyle: const TextStyle(
                  fontSize: 17, color: Color(0xFF85838D), fontFamily: 'inter'),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF85838D)),
                  borderRadius: BorderRadius.circular(5)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
          width: double.infinity,
        ),
        Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("¿No tienes cuenta? "),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signin1()),
                );
              },
              child: const Text(
                "Crear cuenta",
                style: TextStyle(color: Color(0xFF4028FC)),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 50,
          width: double.infinity,
        ),
        Center(
          child: SizedBox(
            height: 45,
            width: 300,
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 17, fontFamily: 'inter-semibold'),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundColor: Color.fromARGB(255, 5, 27, 126),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => navigatorBar()),
                );
              },
              child: const Text('Iniciar Sesión'),
            ),
          ),
        ),
      ]),
    );
  }
}
