import 'package:shared_preferences/shared_preferences.dart';

/// A repository for managing user preferences related to favorite planets.
class UserPreferencesRepository {
  static const String _favoritesKey = 'favorite_planets';

  /// Adds a planet to the user's favorites list.
  /// If the planet is already in the favorites, it will not be added again.
  Future<void> addFavoritePlanet(String planetId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(_favoritesKey) ?? [];
    if (!favorites.contains(planetId)) {
      favorites.add(planetId);
      await prefs.setStringList(_favoritesKey, favorites);
    }
  }

  /// Removes a planet from the user's favorites list.
  Future<void> removeFavoritePlanet(String planetId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(_favoritesKey) ?? [];
    favorites.remove(planetId);
    await prefs.setStringList(_favoritesKey, favorites);
  }

  /// Gets the list of favorite planets from user preferences.
  Future<List<String>> getFavoritePlanets() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_favoritesKey) ?? [];
  }
}