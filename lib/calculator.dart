import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Factorial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CalculadoraFactorial(title: 'Flutter Demo Home Page'),
    );
  }
}

class CalculadoraFactorial extends StatefulWidget {
    @override
  const CalculadoraFactorial({super.key, required this.title});