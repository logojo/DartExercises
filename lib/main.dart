import 'package:flutter/material.dart';
//import 'package:helloworld/presentation/screens/counter/counter.dart';
//import 'package:helloworld/presentation/screens/counter/counter_functions.dart';
import 'package:helloworld/presentation/screens/counter/practicas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //Flutter exige que cada widget ( clase tenga una llave)
  const MyApp({super.key});

//toda las aplicación de flutter se contrullen a partir de widgets que ya estan preintalados
//Por parte de material
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.cyan),
      home: const Practicas(),
    );
  }
}
