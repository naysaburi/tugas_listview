import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_calculator_2/controllers/football_controller.dart';
import 'package:tugas_calculator_2/pages/football_edit_page.dart';
import 'package:tugas_calculator_2/routes/routes.dart';

class FootballPlayerPage extends StatelessWidget {
  FootballPlayerPage({super.key});

  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Football Players")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
          itemCount: footballController.players.length,
          itemBuilder: (context, index) {
            var player = footballController.players[index];
            return ListTile(
              onTap: () async {
                final updatedPlayer = await Get.to(() => FootballEditPage(player: footballController.players[index]));
                if (updatedPlayer != null) {
                  footballController.players[index] = updatedPlayer; // update data di list
                }
              },

              leading: CircleAvatar(
                backgroundImage: NetworkImage(player.profileUrl),
              ),
              title: Text("${player.name} (#${player.number})"),
              subtitle: Text(player.position),
            );
          },
        )),
      ),
    );
  }
}
