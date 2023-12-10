import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier {
  double _difficulty = 3;
  bool _showDetails = true;

  double get difficulty => _difficulty;
  bool get showDetails => _showDetails;

  void setDifficulty(double newDifficulty) {
    _difficulty = newDifficulty;
    notifyListeners();
  }

  void setShowDetails(bool show) {
    _showDetails = show;
    notifyListeners();
  }
}