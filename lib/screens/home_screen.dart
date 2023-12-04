import 'package:bearwalk/utils/ColorHelper.dart';
import 'package:bearwalk/utils/my_snackbars.dart';
import 'package:bearwalk/widgets/large_icon_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.inversePrimary(context),
        title: const Text('Home Screen'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyLargeIconButton(
                text: 'Spielen',
                icon: Icons.play_arrow,
                onPressed: () {
                  showAwesomeSnackbar(
                      context, "Spielen gedrückt", Colors.green, Icons.check, durationInSeconds: 1);
                },
              ),
              const SizedBox(height: 64),
              MyLargeIconButton(
                text: 'Einstellungen',
                icon: Icons.settings,
                onPressed: () {
                  showAwesomeSnackbar(
                      context, "Einstellungen gedrückt", Colors.green, Icons.check, durationInSeconds: 1);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
