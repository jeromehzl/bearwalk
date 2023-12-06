import 'package:bearwalk/widgets/large_icon_button.dart';
import 'package:flutter/material.dart';

import '../utils/ColorHelper.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.inversePrimary(context),
        automaticallyImplyLeading: false,
        title: const Text('Game Screen'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                width: 240.0,
                height: 240.0,
                decoration: BoxDecoration(
                  color: ColorHelper.primary(context),
                  shape: BoxShape.circle,
                  border: const Border.fromBorderSide(
                    BorderSide(
                      color: Colors.black45,
                      width: 5.0,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '0.0 X',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      '0.0 Y',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      '0.0 Z',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: ColorHelper.inversePrimary(context),
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  "Handrücken",
                  // Wird später durch den Modus aus dem Provider ausgetauscht
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: ColorHelper.inversePrimary(context),
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "X",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Schritte",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "00:00 Zeit",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: MyLargeIconButton(
                text: 'Starten',
                icon: Icons.play_arrow,
                size: const Size(150, 10),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
