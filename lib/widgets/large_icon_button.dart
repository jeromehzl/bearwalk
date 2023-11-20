import 'package:flutter/material.dart';

class MyLargeIconButton extends StatelessWidget {
  final String text; // Parameter für den Button-Text
  final IconData icon; // Parameter für das Icon

  // Konstruktor, der den Text und das Icon von außen entgegennimmt
  const MyLargeIconButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
      ),
      onPressed: () {
        // Hier kommt die Logik des Buttons hin
      },
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
