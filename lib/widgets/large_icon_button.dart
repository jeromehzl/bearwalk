import 'package:flutter/material.dart';
import '../utils/ColorHelper.dart';

class MyLargeIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final Size? size; // Optionaler Parameter für die Größe

  const MyLargeIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.size, // Optionaler Parameter im Konstruktor
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
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: size?.width ?? 0, // Mindestbreite auf 0 setzen, wenn keine Größe angegeben wird
          minHeight: size?.height ?? 0, // Mindesthöhe auf 0 setzen, wenn keine Größe angegeben wird
        ),
        child: IntrinsicWidth( // Stellt sicher, dass der Button nicht breiter als nötig ist
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Icon(
                icon,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
