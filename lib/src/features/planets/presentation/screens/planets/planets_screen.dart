import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:challenge_cardozo/src/common_widgets/custom_dropdown.dart';
import 'package:challenge_cardozo/src/common_widgets/custom_loading_indicator.dart';
import 'package:challenge_cardozo/src/common_widgets/custom_text_field.dart';
import 'package:challenge_cardozo/src/features/planets/domain/planet.dart';
import 'package:challenge_cardozo/src/features/planets/presentation/providers/providers.dart';
import 'package:challenge_cardozo/src/features/planets/presentation/utils/favorite_toggle.dart';

part 'widgets/planet_card.dart';

/// Enum for the sorting criteria.
enum PlanetSortField { name, mass, distance }

/// Provider for the sorting field.
final sortFieldProvider = StateProvider<PlanetSortField>(
  (ref) => PlanetSortField.name,
);

/// Provider for the search text input.
/// This provider holds the current search text for filtering planets.
final searchTextProvider = StateProvider<String>((ref) => '');

/// A Screen that displays a list of planets.
class PlanetsScreen extends ConsumerStatefulWidget {
  const PlanetsScreen({super.key});

  @override
  ConsumerState<PlanetsScreen> createState() => _PlanetsScreenState();
}

class _PlanetsScreenState extends ConsumerState<PlanetsScreen> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: ref.read(searchTextProvider));
    controller.addListener(() {
      ref.read(searchTextProvider.notifier).state = controller.text;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final planetsAsync = ref.watch(getPlanetsProvider);
    final sortField = ref.watch(sortFieldProvider);
    final searchText = ref.watch(searchTextProvider);
    final userFavoritesAsync = ref.watch(getFavoritePlanetsProvider);
    final userFavorites = userFavoritesAsync.maybeWhen(
      data: (favorites) => favorites,
      orElse: () => <String>[],
    );

    if (controller.text != searchText) {
      controller.text = searchText;
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length),
      );
    }

    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: CustomTextField(
            controller: controller,
            suffixIcon: Icon(Icons.search),
            label: 'Search',
            hintText: 'Enter planet name',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const SizedBox(width: 10),
              const Text('- Planet list -'),
              Expanded(child: const SizedBox()),
              const Text('Sort by:'),
              const SizedBox(width: 10),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 50, maxWidth: 110),
                child: CustomDropdown<PlanetSortField>(
                  value: sortField,
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(sortFieldProvider.notifier).state = value;
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: PlanetSortField.name,
                      child: Text('Name'),
                    ),
                    DropdownMenuItem(
                      value: PlanetSortField.mass,
                      child: Text('Mass'),
                    ),
                    DropdownMenuItem(
                      value: PlanetSortField.distance,
                      child: Text('Distance'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: planetsAsync.when(
            data: (planets) {
              // Filtering
              final filtered =
                  planets
                      .where(
                        (planet) => planet.name.toLowerCase().contains(
                          searchText.toLowerCase(),
                        ),
                      )
                      .toList();

              // Sorting
              filtered.sort((a, b) {
                switch (sortField) {
                  // By name
                  case PlanetSortField.name:
                    return a.name.compareTo(b.name);

                  // By mass
                  case PlanetSortField.mass:
                    return Planet.compareByMass(a, b);

                  // By distance
                  case PlanetSortField.distance:
                    return (a.orbitalDistanceKm).compareTo(b.orbitalDistanceKm);
                }
              });

              return ListView.builder(
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final planet = filtered[index];
                  return PlanetCard(
                    planet: planet,
                    isFavorite: userFavorites.contains(planet.name),
                  );
                },
              );
            },
            loading: () => const Center(child: CustomLoadingIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        ),
      ],
    );
  }
}
