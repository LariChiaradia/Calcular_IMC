import 'package:calcular_imc/controllerPages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Calculadora De IMC",
      home: ControllerPages(),
    );
  }
}
