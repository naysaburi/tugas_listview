import 'package:get/get.dart';
import 'package:tugas_calculator_2/pages/bottom_nav_page.dart';
import 'package:tugas_calculator_2/pages/calculator_page.dart';
import 'package:tugas_calculator_2/pages/football_edit_page.dart';
import 'package:tugas_calculator_2/pages/football_player_page.dart';
import 'package:tugas_calculator_2/pages/home_page.dart';
import 'package:tugas_calculator_2/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPlayerPage()),
    GetPage(name: AppRoutes.footballeditplayers, page: () => FootballEditPage(player: Get.arguments)),
    GetPage(name: AppRoutes.bottomnav, page: () => BottomNavPage()), //
  ];
}
