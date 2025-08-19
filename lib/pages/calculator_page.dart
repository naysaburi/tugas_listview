import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_calculator_2/components/tombol_component.dart';
import '../controllers/calculator_controller.dart';
import '../components/button_component.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input pertama
            TextField(
              controller: controller.firstNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Angka Pertama",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            // Input kedua
            TextField(
              controller: controller.secondNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Angka Kedua",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol operasi
            Row(
              children: [
                TombolComponent(label: "+", onTap: () => controller.calculate("+")),
                TombolComponent(label: "-", onTap: () => controller.calculate("-")),
              ],
            ),
            Row(
              children: [
                TombolComponent(label: "×", onTap: () => controller.calculate("×")),
                TombolComponent(label: "÷", onTap: () => controller.calculate("÷")),
              ],
            ),
            Row(
              children: [
                TombolComponent(label: "C", color: Colors.red, onTap: controller.clear),
              ],
            ),
            const SizedBox(height: 20),

            // Hasil
            Obx(() => Text(
              controller.result.value,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }
}
