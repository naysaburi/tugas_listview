import 'package:get/get.dart';
import 'package:tugas_calculator_2/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}