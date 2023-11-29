import 'package:flutter/material.dart';
import 'package:tu_inventario_movil/view/Singin/singin1.dart';
import 'package:tu_inventario_movil/view/Singin/singin3.dart';

class singin2 extends StatefulWidget {
  singin2({Key? key}) : super(key: key);

  @override
  State<singin2> createState() => _singin2State();
}

class _singin2State extends State<singin2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Paso 2 de 3",
              style: TextStyle(fontFamily: 'inter-semibold', fontSize: 17)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signin1()),
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
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Text("Cotinuamos...",
                  style: TextStyle(fontFamily: 'ubuntu', fontSize: 32)),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  "¡Perfecto! Para garantizar una experiencia personalizada y segura, necesitamos algunos detalles adicionales. Por favor, proporciona tu edad y un documento de identificación válido.",
                  style: TextStyle(fontFamily: 'inter', fontSize: 15)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Row(
                children: [
                  Text(
                    'Edad',
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
                // controller: controladornumero,
                decoration: InputDecoration(
                  hintText: 'Edad',
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
                    'Identificacion',
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
                // controller: controladoremail,
                decoration: InputDecoration(
                  hintText: 'Identificacion',
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
                      MaterialPageRoute(builder: (context) => singin3()),
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
