import 'package:bearwalk/providers/settings_provider.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class DrawerProvider extends ChangeNotifier {
  String _selectedDrawerScreen = 'Home';

  String get selectedDrawerScreen => _selectedDrawerScreen;

  void changeSelectedDrawerScreen(String newSelectedDrawerScreen) {
    _selectedDrawerScreen = newSelectedDrawerScreen;
    notifyListeners();
  }

}
