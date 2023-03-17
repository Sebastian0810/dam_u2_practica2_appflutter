import 'package:dam_u2_practica2_appflutter/perros.dart';
import 'package:flutter/material.dart';

import 'adoptar.dart';
import 'gatos.dart';

class Practica2 extends StatefulWidget {
  const Practica2({Key? key}) : super(key: key);

  @override
  State<Practica2> createState() => _Practica2State();
}

class _Practica2State extends State<Practica2> {

  int _indice = 0;

  void _cambiarIndice(int indice){
    setState(() {
      _indice = indice;
    });
  }

  final List<Widget> _pagina = [
    Adoptar(),
    Gatos(),
    Perros()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adopta una mascota", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: _pagina[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Image.asset("Navigation/adopta.png", width: 40, height: 40), label: "Adoptar"),
          BottomNavigationBarItem(icon: Image.asset("Navigation/gato.png", width: 40, height: 40), label: "Gatos rescatados"),
          BottomNavigationBarItem(icon: Image.asset("Navigation/perro.png", width: 40, height: 40,), label: "Perros rescatados"),
        ],
        currentIndex: _indice,
        iconSize: 30,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        onTap: _cambiarIndice,
      ),
    );
  }
}
