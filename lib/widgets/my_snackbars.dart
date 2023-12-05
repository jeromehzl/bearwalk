import 'package:flutter/material.dart';

void showAwesomeSnackbar(
    BuildContext context, String message, Color color, IconData icon,
    {int durationInSeconds = 3}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: color,
      duration: Duration(seconds: durationInSeconds),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(width: 12),
          Text(message),
          const SizedBox(width: 12),
        ],
      ),
    ),
  );
}
