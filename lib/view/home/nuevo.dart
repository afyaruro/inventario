import 'package:flutter/material.dart';

class nuevo extends StatefulWidget {
  nuevo({Key? key}) : super(key: key);

  @override
  State<nuevo> createState() => _nuevoState();
}

class _nuevoState extends State<nuevo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F4F9),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 10, left: 20),
              child: Text(
                'Nuevo Producto',
                style: TextStyle(fontSize: 20, fontFamily: 'ubuntu'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Row(
                children: [
                  Text(
                    'Nombre',
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
                  hintText: 'Nombre',
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
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Row(
                children: [
                  Text(
                    'Cantidad',
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
                  hintText: 'Cantidad',
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
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Row(
                children: [
                  Text(
                    'Precio Compra',
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
                  hintText: 'Precio Compra',
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
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Row(
                children: [
                  Text(
                    'Precio Venta',
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
                  hintText: 'Precio Venta',
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
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Row(
                children: [
                  Text(
                    'Descripcion',
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
                  hintText: 'Descripcion',
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
              height: 20,
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
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => solicitudEnviada()),
                    // );
                  },
                  child: const Text('Añadir al Inventario'),
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
