import 'package:flutter/material.dart';

import '../utils/ColorHelper.dart';
import '../widgets/large_icon_button.dart';
import '../widgets/my_snackbars.dart';
import '../widgets/navigation_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.inversePrimary(context),
        title: const Text('Einstellungen'),
      ),
      drawer: const MyNavigationDrawer(),
      body: const Center(
        child: Text("Hier stehen bald krasse Einstellungen"),
      ),
    );
  }
}
