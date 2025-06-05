import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:challenge_cardozo/src/common_widgets/custom_loading_indicator.dart';
import 'package:challenge_cardozo/src/features/planets/presentation/providers/providers.dart';
import 'package:challenge_cardozo/src/features/planets/presentation/utils/favorite_toggle.dart';

/// A Screen that displays details of a planet.
class PlanetDetailsScreen extends ConsumerWidget {
  const PlanetDetailsScreen({super.key, required this.planetName});

  /// The name of the planet to display details for.
  final String planetName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planetsAsync = ref.watch(getPlanetByNameProvider(planetName));
    final userFavoritesAsync = ref.watch(getFavoritePlanetsProvider);
    final userFavorites = userFavoritesAsync.maybeWhen(
      data: (favorites) => favorites,
      orElse: () => <String>[],
    );
    final isFavorite = userFavorites.contains(planetName);

    return planetsAsync.when(
      data: (planet) {
        if (planet == null) {
          Future.microtask(() {
            if (context.mounted) {
              context.go('/not-found');
            }
          });
          return const SizedBox.shrink();
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                title: Text(
                  planet.name.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                    ),
                    onPressed: () async {
                      await toggleFavoritePlanet(
                        context: context,
                        ref: ref,
                        planetName: planet.name,
                        isFavorite: isFavorite,
                      );
                    },
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(24),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(100),
                        blurRadius: 14,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      planet.image,
                      width: MediaQuery.of(context).size.height * 0.35,
                      height: MediaQuery.of(context).size.height * 0.35,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const CustomLoadingIndicator(size: 100);
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(100),
                        blurRadius: 14,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          planet.description,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Orbital distance: ${planet.orbitalDistanceKm} km',
                        ),
                        Text(
                          'Equatorial radius: ${planet.equatorialRadiusKm} km',
                        ),
                        Text('Mass: ${planet.massKg} kg'),
                        Text('Density: ${planet.densityGCm3} g/cm³'),
                        Text(
                          'Surface gravity: ${planet.surfaceGravityMS2} m/s²',
                        ),
                        Text(
                          'Escape velocity: ${planet.escapeVelocityKmh} km/h',
                        ),
                        Text('Day length: ${planet.dayLengthEarthDays} days'),
                        if (planet.yearLengthEarthDays != null)
                          Text(
                            'Year length: ${planet.yearLengthEarthDays} days',
                          ),
                        if (planet.yearLengthEarthYears != null)
                          Text(
                            'Year length: ${planet.yearLengthEarthYears} years',
                          ),
                        Text('Orbital speed: ${planet.orbitalSpeedKmh} km/h'),
                        Text('Atmosphere: ${planet.atmosphereComposition}'),
                        Text('Moons: ${planet.moons}'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      loading: () => Center(child: CustomLoadingIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
