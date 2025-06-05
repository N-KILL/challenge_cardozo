import 'package:collection/collection.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:challenge_cardozo/src/features/planets/data/planet_repository.dart';
import 'package:challenge_cardozo/src/features/planets/domain/planet.dart';

part 'planet_provider.g.dart';


/// A provider that fetches a list of planets from the repository.
@riverpod
Future<List<Planet>> getPlanets(Ref ref) async {
  final repo = PlanetsRepository();
  return await repo.fetchPlanets();
}

/// A provider that fetches a planet by its ID.
@riverpod
Future<Planet?> getPlanetByName(Ref ref, String planetName) async {
  final repo = PlanetsRepository();
  final planets = await repo.fetchPlanets();
  return planets.firstWhereOrNull((planet) => planet.name == planetName);
}
