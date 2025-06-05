part of '../planets_screen.dart';

/// A widget that displays a card for a planet with its image, name, and
/// description.
class PlanetCard extends StatelessWidget {
  const PlanetCard({super.key, required this.planet});

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    // Register the web image view type if running on web
    // This allows the image to be displayed correctly on web without CORS issues.
    registerWebImageViewTypeIfNeeded(
      '${planet.name}-card',
      planet.image,
      80,
      80,
    );

    return GestureDetector(
      onTap: () {
        context.go('/planets/${planet.name}');
      },
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child:
                    // Note this is a fix, to use the images on web, avoiding
                    // CORS policy.
                    kIsWeb
                        ? SizedBox(
                          height: 80,
                          width: 80,
                          child: HtmlElementView(
                            viewType:
                                'planet-image-${planet.name}-card',
                          ),
                        )
                        : Image.network(
                          planet.image,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              width: 80,
                              height: 80,
                              color: Colors.grey[200],
                              child: const Center(
                                child: Icon(
                                  Icons.public,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 80,
                              height: 80,
                              color: Colors.grey[300],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.public,
                                    size: 40,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'No image',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
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
                    Text(planet.name),
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
