import 'package:get/get.dart';
import 'package:tugas_calculator_2/model/models.dart';

class FootballController extends GetxController {
  var players = <Player>[
    Player(
      name: "Asep",
      number: 7,
      position: "Striker",
      profileUrl: "https://via.placeholder.com/150",
    ),
    Player(
      name: "Udin",
      number: 10,
      position: "Striker",
      profileUrl: "https://via.placeholder.com/150",
    ),
    Player(
      name: "Joni",
      number: 9,
      position: "Striker",
      profileUrl: "https://via.placeholder.com/150",
    ),
    Player(
      name: "Agus",
      number: 5,
      position: "Striker",
      profileUrl: "https://via.placeholder.com/150",
    ),
    Player(
      name: "Ucok",
      number: 3,
      position: "Striker",
      profileUrl: "https://via.placeholder.com/150",
    ),
  ].obs;
}