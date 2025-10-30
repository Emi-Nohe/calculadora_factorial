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
      home: const Calculator(title: 'Calculadora de Factorial'),
    );
  }
}

  class Calculator extends StatefulWidget {
  final String title;
  const Calculator({super.key, required this.title});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _controller = TextEditingController();
  String? _result;
  bool _isLoading = false;

  void _calculateFactorial() async {
    final input = int.tryParse(_controller.text);
    if (input == null || input < 0) {
      setState(() => _result = 'Por favor ingresa un número válido');
      return;
    }

    setState(() {
      _isLoading = true;
      _result = null;
    });

    final value = await _recursiveFactorial(input);

    setState(() {
      _isLoading = false;
      _result = 'Factorial de $input es $value';
    });
  }

  Future<int> _recursiveFactorial(int n) async {
    return n <= 1 ? 1 : n * await _recursiveFactorial(n - 1);
  }