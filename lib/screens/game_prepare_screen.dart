import 'package:bearwalk/widgets/large_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/game_provider.dart';
import '../utils/ColorHelper.dart';
import 'game_screen.dart';

class GamePrepareScreen extends StatelessWidget {
  const GamePrepareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gameProvider = Provider.of<GameProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.inversePrimary(context),
        title: const Text('Game Prepare Screen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Schwierigkeit",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Slider(
                  value: gameProvider.difficulty,
                  min: 1,
                  max: 10,
                  divisions: 9,
                  label: gameProvider.difficulty.toString(),
                  onChanged: (double value) {
                    gameProvider.setDifficulty(value);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Detailansicht",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Switch(
                  value: gameProvider.showDetails,
                  onChanged: (bool value) {
                    gameProvider.setShowDetails(value);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
                child: MyLargeIconButton(
              text: 'Spielen',
              icon: Icons.play_arrow,
              size: const Size(100, 50),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const GameScreen(),
                  ),
                );
              },
            )),
          )
        ],
      ),
    );
  }
}
