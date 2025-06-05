import 'package:freezed_annotation/freezed_annotation.dart';

part 'planet.freezed.dart';
part 'planet.g.dart';

/// A model representing a planet with various attributes, based on the provided
/// JSON structure by the API.
@freezed
abstract class Planet with _$Planet {
  const factory Planet({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "orbital_distance_km") required int orbitalDistanceKm,
    @JsonKey(name: "equatorial_radius_km") required int equatorialRadiusKm,
    @IntOrStringToStringConverter()
    @JsonKey(name: "volume_km3") required String volumeKm3,
    @JsonKey(name: "mass_kg") required String massKg,
    @JsonKey(name: "density_g_cm3") required double densityGCm3,
    @JsonKey(name: "surface_gravity_m_s2") required double surfaceGravityMS2,
    @JsonKey(name: "escape_velocity_kmh") required int escapeVelocityKmh,
    @JsonKey(name: "day_length_earth_days") required double dayLengthEarthDays,
    @JsonKey(name: "year_length_earth_days")
    double? yearLengthEarthDays,
    @JsonKey(name: "year_length_earth_years")
    double? yearLengthEarthYears,
    @JsonKey(name: "orbital_speed_kmh") required int orbitalSpeedKmh,
    @JsonKey(name: "atmosphere_composition")
    required String atmosphereComposition,
    @JsonKey(name: "moons") required int moons,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "description") required String description,
  }) = _Planet;

  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);

  ///  Compares two planets by their mass.
  static int compareByMass(Planet a, Planet b) {
    final double massA = double.tryParse(a.massKg.replaceAll(',', '')) ?? 0;
    final double massB = double.tryParse(b.massKg.replaceAll(',', '')) ?? 0;
    return massA.compareTo(massB);
  }
}

/// A custom JSON converter that handles both `int` and `String` types for the 
/// volumeKm3  field. This is necessary because the API may return this field as
/// either type, and we want to ensure it is always stored as a `String` in the 
/// model.
class IntOrStringToStringConverter implements JsonConverter<String, Object?> {
  const IntOrStringToStringConverter();

  @override
  String fromJson(Object? json) {
    if (json is int) return json.toString();
    if (json is String) return json;
    throw Exception('Invalid type for volumeKm3: ${json.runtimeType}');
  }

  @override
  Object toJson(String object) => object;
}

