import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tu_inventario_movil/view/Singin/singin2.dart';

class signin1 extends StatefulWidget {
  signin1({Key? key}) : super(key: key);

  @override
  State<signin1> createState() => _signin1State();
}

class _signin1State extends State<signin1> {
  // ControlardorCustomer controlardorCustomer = Get.find();
  final TextEditingController controladornumero = TextEditingController();
  final TextEditingController controladoremail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Paso 1 de 3",
              style: TextStyle(fontFamily: 'inter-semibold', fontSize: 17)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => singin2()),
              );
            }),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 5,
              color: const Color(0xFFF0EFF5),
              child: Container(
                color: const Color(0xFF4028FC),
                width: MediaQuery.of(context).size.width * 0.3,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Text("Comencemos a crear tu cuenta",
                  style: TextStyle(fontFamily: 'ubuntu', fontSize: 32)),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  "¡Hola! Estamos emocionados de tenerte a bordo. Para continuar, necesitamos algunos detalles básicos. Por favor, proporciona tu nombre y apellido a continuación.",
                  style: TextStyle(fontFamily: 'inter', fontSize: 15)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Row(
                children: [
                  Text(
                    'Nombres',
                    style: TextStyle(fontSize: 13, fontFamily: 'inter-medium'),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'inter-medium',
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextField(
                controller: controladornumero,
                decoration: InputDecoration(
                  hintText: 'Nombres',
                  hintStyle: const TextStyle(
                      fontSize: 17,
                      color: Color(0xFF85838D),
                      fontFamily: 'inter'),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFF85838D)),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                ),
                keyboardType: TextInputType
                    .number, // Esto limita el teclado a solo números
                // inputFormatters: <TextInputFormatter>[
                //   FilteringTextInputFormatter
                //       .digitsOnly, // Esto permite solo dígitos
                // ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Row(
                children: [
                  Text(
                    'Apellidos',
                    style: TextStyle(fontSize: 13, fontFamily: 'inter-medium'),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'inter-medium',
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextField(
                controller: controladoremail,
                decoration: InputDecoration(
                  hintText: 'Apellidos',
                  hintStyle: const TextStyle(
                      fontSize: 17,
                      color: Color(0xFF85838D),
                      fontFamily: 'inter'),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFF85838D)),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
              width: double.infinity,
            ),
            Center(
              child: SizedBox(
                height: 45,
                width: 300,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 17),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color(0xFF4028FC),
                  ),
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => singin2()),
                    );
                  },
                  child: const Text('Siguiente'),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
              width: double.infinity,
            ),
          ],
        ));
  }
}
