import 'package:challenge_cardozo/src/features/planets/domain/planet.dart';
import 'package:dio/dio.dart';

/// A repository for fetching planet data from a remote API.
class PlanetsRepository {
  // Singleton instance
  static final PlanetsRepository _instance = PlanetsRepository._internal();

  // Private constructor
  PlanetsRepository._internal({Dio? dio}) : _dio = dio ?? Dio();

  // Factory constructor returns the singleton instance
  factory PlanetsRepository({Dio? dio}) {
    if (dio != null) {
      // If a custom Dio is provided, replace the internal Dio
      _instance._dio = dio;
    }
    return _instance;
  }

  /// Dio instance for making HTTP requests
  Dio _dio;

  // Base URL for the planets API
  static const String _baseUrl =
      'https://us-central1-a-academia-espacial.cloudfunctions.net/planets';

  /// Fetches a list of planets from the remote API.
  Future<List<Planet>> fetchPlanets() async {
    try {
      // Make a GET request to the planets API
      final response = await _dio.get(_baseUrl);

      // Check if the response status code is 200
      if (response.statusCode == 200) {
        // Assuming the response data is structured as {'data': [...]}
        final data = response.data['data'] as List<dynamic>;

        // Map the JSON data to a list of Planet objects
        return data.map((planetData) => Planet.fromJson(planetData)).toList();
      } else {
        // If the response status code is not 200, throw an exception
        throw Exception('Failed to load planets');
      }
    } catch (e) {
      // Handle any errors that occur during the request
      throw Exception('Error fetching planets: $e');
    }
  }
}
