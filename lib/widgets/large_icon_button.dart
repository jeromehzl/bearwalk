import 'package:flutter/material.dart';

import '../utils/ColorHelper.dart';

class MyLargeIconButton extends StatelessWidget {
  final String text; // Parameter für den Button-Text
  final IconData icon; // Parameter für das Icon
  final VoidCallback onPressed;

  // Konstruktor, der den Text und das Icon von außen entgegennimmt
  const MyLargeIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorHelper.primary(context),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Icon(
            icon,
            size: 24,
          ),
        ],
      ),
    );
  }
}
