import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_calculator_2/model/models.dart';

class FootballEditController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController noPunggungController = TextEditingController();
  TextEditingController positionController = TextEditingController();

  late Player player; // data pemain yang akan diedit

  void setPlayer(Player p) {
    player = p;
    nameController.text = p.name;
    noPunggungController.text = p.number.toString();
    positionController.text = p.position;
  }

  Player getUpdatedPlayer() {
    return player.copyWith(
      name: nameController.text,
      number: int.tryParse(noPunggungController.text) ?? player.number,
      position: positionController.text,
    );
  }

  @override
  void onClose() {
    nameController.dispose();
    noPunggungController.dispose();
    positionController.dispose();
    super.onClose();
  }
}
