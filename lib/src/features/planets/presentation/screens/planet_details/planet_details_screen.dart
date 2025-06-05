import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:challenge_cardozo/src/common_widgets/custom_loading_indicator.dart';
import 'package:challenge_cardozo/src/features/planets/presentation/providers/providers.dart';

/// A Screen that displays details of a planet.
class PlanetDetailsScreen extends ConsumerWidget {
  const PlanetDetailsScreen({super.key, required this.planetName});

  final String planetName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planetsAsync = ref.watch(getPlanetByNameProvider(planetName));

    return planetsAsync.when(
      data: (planet) {
        if (planet == null) {
          context.go('planet/not-found');
          return const SizedBox.shrink();
        }

        return Column(
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
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(25),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Image.network(
                  planet.image,
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.width * 0.7,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const CustomLoadingIndicator(size: 100);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        planet.description,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      Text('Orbital distance: ${planet.orbitalDistanceKm} km'),
                      Text(
                        'Equatorial radius: ${planet.equatorialRadiusKm} km',
                      ),
                      Text('Mass: ${planet.massKg} kg'),
                      Text('Density: ${planet.densityGCm3} g/cm³'),
                      Text('Surface gravity: ${planet.surfaceGravityMS2} m/s²'),
                      Text('Escape velocity: ${planet.escapeVelocityKmh} km/h'),
                      Text('Day length: ${planet.dayLengthEarthDays} days'),
                      if (planet.yearLengthEarthDays != null)
                        Text('Year length: ${planet.yearLengthEarthDays} days'),
                      if (planet.yearLengthEarthYears != null)
                        Text(
                          'Year length: ${planet.yearLengthEarthYears} years',
                        ),
                      Text('Orbital speed: ${planet.orbitalSpeedKmh} km/h'),
                      Text('Atmosphere: ${planet.atmosphereComposition}'),
                      Text('Moons: ${planet.moons}'),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
      loading:
          () => const Scaffold(body: Center(child: CustomLoadingIndicator())),
      error:
          (error, stack) =>
              Scaffold(body: Center(child: Text('Error: $error'))),
    );
  }
}
