import 'package:dam_u2_practica2_appflutter/practica2.dart';
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
      title: 'Adopción de mascotas',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Practica2(),
    );
  }
}