import 'package:flutter/material.dart';


/// Displays a SnackBar to inform the user about the favorite status of a planet.
void showFavoriteSnackBar(BuildContext context, String planetName, bool added) {
  final message =
      added
          ? '$planetName added to favorites'
          : '$planetName removed from favorites';
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
  );
}
