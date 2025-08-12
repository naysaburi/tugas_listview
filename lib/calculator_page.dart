import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  void calculate(BuildContext context, String operation) {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    double result = 0;

    switch (operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '×':
        result = num1 * num2;
        break;
      case '÷':
        result = num2 != 0 ? num1 / num2 : double.infinity;
        break;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Hasil: $result')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Sederhana'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Angka pertama'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Angka kedua'),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => calculate(context, '+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => calculate(context, '-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => calculate(context, '×'),
                  child: const Text('×'),
                ),
                ElevatedButton(
                  onPressed: () => calculate(context, '÷'),
                  child: const Text('÷'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
