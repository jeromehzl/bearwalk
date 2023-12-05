import 'package:bearwalk/utils/ColorHelper.dart';
import 'package:bearwalk/widgets/my_snackbars.dart';
import 'package:bearwalk/widgets/large_icon_button.dart';
import 'package:bearwalk/widgets/navigation_drawer.dart';
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
      drawer: const MyNavigationDrawer(),
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
                size: const Size(100, 50),
                onPressed: () {
                  showAwesomeSnackbar(
                      context, "Spielen gedrückt", Colors.green, Icons.check, durationInSeconds: 1);
                },
              ),
              const SizedBox(height: 128),
              MyLargeIconButton(
                text: 'Einstellungen',
                icon: Icons.settings,
                size: const Size(100, 50),
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
