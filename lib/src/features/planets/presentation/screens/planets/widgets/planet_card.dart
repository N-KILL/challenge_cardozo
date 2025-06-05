part of '../planets_screen.dart';

/// A widget that displays a card for a planet with its image, name, and
/// description.
class PlanetCard extends ConsumerWidget {
  const PlanetCard({super.key, required this.planet, required this.isFavorite});

  /// Planet to display in the card.
  final Planet planet;

  /// Whether the planet is marked as favorite by the user.
  final bool isFavorite;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        context.go('/planets/${planet.name}');
      },
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  planet.image,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      width: 80,
                      height: 80,
                      color: Theme.of(context).colorScheme.tertiary,
                      child: Center(
                        child: Icon(
                          Icons.public,
                          size: 40,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 80,
                      height: 80,
                      color: Theme.of(context).colorScheme.tertiary,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.public,
                            size: 40,
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'No image',
                            style: TextStyle(
                              fontSize: 10,
                              color: Theme.of(context).colorScheme.onTertiary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(planet.name),
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
                    const SizedBox(height: 8),
                    Text(
                      planet.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
