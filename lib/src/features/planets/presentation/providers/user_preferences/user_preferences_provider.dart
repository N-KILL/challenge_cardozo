import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:challenge_cardozo/src/features/planets/data/user_preferences_repository.dart';

part 'user_preferences_provider.g.dart';

@riverpod
Future<List<String>> getFavoritePlanets(Ref ref) async {
  final repo = UserPreferencesRepository();
  return await repo.getFavoritePlanets();
}

@riverpod
Future<void> addFavoritePlanet(Ref ref, String planetId) async {
  final repo = UserPreferencesRepository();
  await repo.addFavoritePlanet(planetId);
}

@riverpod
Future<void> removeFavoritePlanet(Ref ref, String planetId) async {
  final repo = UserPreferencesRepository();
  await repo.removeFavoritePlanet(planetId);
}
