import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();

  var result = ''.obs;

  void calculate(String operator) {
    double num1 = double.tryParse(firstNumberController.text) ?? 0;
    double num2 = double.tryParse(secondNumberController.text) ?? 0;
    double res = 0;

    switch (operator) {
      case '+':
        res = num1 + num2;
        break;
      case '-':
        res = num1 - num2;
        break;
      case '×':
        res = num1 * num2;
        break;
      case '÷':
        if (num2 != 0) {
          res = num1 / num2;
        } else {
          result.value = "Error (÷0)";
          return;
        }
        break;
    }

    result.value = res.toString();
  }

  void clear() {
    firstNumberController.clear();
    secondNumberController.clear();
    result.value = '';
  }
}
