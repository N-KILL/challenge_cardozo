import 'package:flutter/material.dart';

/// A custom button widget that provides a consistent look and feel across the
/// app.
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      child: Text(label, style: TextStyle(color: Colors.white)),
    );
  }
}
