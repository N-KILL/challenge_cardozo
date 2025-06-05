import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:challenge_cardozo/src/features/planets/presentation/providers/providers.dart';
import 'package:challenge_cardozo/src/features/planets/presentation/screens/planet_details/widgets/snack_bar.dart';

/// Toggles the favorite status of a planet.
/// If the planet is already a favorite, it will be removed from favorites.
Future<void> toggleFavoritePlanet({
  required BuildContext context,
  required WidgetRef ref,
  required String planetName,
  required bool isFavorite,
}) async {
  if (isFavorite) {
    await ref.read(removeFavoritePlanetProvider(planetName).future);
    if (context.mounted) {
      showFavoriteSnackBar(context, planetName, false);
    }
  } else {
    await ref.read(addFavoritePlanetProvider(planetName).future);
    if (context.mounted) {
      showFavoriteSnackBar(context, planetName, true);
    }
  }
  ref.invalidate(getFavoritePlanetsProvider);
}
