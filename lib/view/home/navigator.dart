import 'package:flutter/material.dart';
import 'package:tu_inventario_movil/view/home/nuevo.dart';
import 'package:tu_inventario_movil/view/home/productos.dart';

class navigatorBar extends StatefulWidget {
  navigatorBar({Key? key}) : super(key: key);

  @override
  State<navigatorBar> createState() => _navigatorBarState();
}

class _navigatorBarState extends State<navigatorBar> {
  int _currentindex = 0;
  final List<Widget> _children = [
    productos(),
    nuevo(),
  ];
  void onTadVista(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentindex,
            onTap: onTadVista,
            fixedColor: Color(0xFF4028FC),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Productos"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.payments), label: "Nuevo Producto"),
            ]),
        body: _children[_currentindex]);
  }
}
