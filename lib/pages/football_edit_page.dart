import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_calculator_2/controllers/football_edit_controller.dart';
import 'package:tugas_calculator_2/model/models.dart';

class FootballEditPage extends StatelessWidget {
  final FootballEditController controller = Get.put(FootballEditController());

  final Player player; // data pemain yang mau diedit

  FootballEditPage({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    controller.setPlayer(player);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Player"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller.nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller.noPunggungController,
              decoration: const InputDecoration(labelText: "No Punggung"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller.positionController,
              decoration: const InputDecoration(labelText: "Position"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final updatedPlayer = player.copyWith(
                  name: controller.nameController.text,
                  number: int.tryParse(controller.noPunggungController.text) ?? player.number,
                  position: controller.positionController.text,
                );

                Get.back(result: updatedPlayer);
              },
              child: const Text("Save"),
            ),

          ],
        ),
      ),
    );
  }
}
