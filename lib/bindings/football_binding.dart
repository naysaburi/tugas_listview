import 'package:get/get.dart';
import 'package:tugas_calculator_2/controllers/football_controller.dart';

class FootballBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FootballController());
  }

}