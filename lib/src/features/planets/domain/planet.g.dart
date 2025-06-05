// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Planet _$PlanetFromJson(Map<String, dynamic> json) => _Planet(
  name: json['name'] as String,
  orbitalDistanceKm: (json['orbital_distance_km'] as num).toInt(),
  equatorialRadiusKm: (json['equatorial_radius_km'] as num).toInt(),
  volumeKm3: const IntOrStringToStringConverter().fromJson(json['volume_km3']),
  massKg: json['mass_kg'] as String,
  densityGCm3: (json['density_g_cm3'] as num).toDouble(),
  surfaceGravityMS2: (json['surface_gravity_m_s2'] as num).toDouble(),
  escapeVelocityKmh: (json['escape_velocity_kmh'] as num).toInt(),
  dayLengthEarthDays: (json['day_length_earth_days'] as num).toDouble(),
  yearLengthEarthDays: (json['year_length_earth_days'] as num?)?.toDouble(),
  yearLengthEarthYears: (json['year_length_earth_years'] as num?)?.toDouble(),
  orbitalSpeedKmh: (json['orbital_speed_kmh'] as num).toInt(),
  atmosphereComposition: json['atmosphere_composition'] as String,
  moons: (json['moons'] as num).toInt(),
  image: json['image'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$PlanetToJson(_Planet instance) => <String, dynamic>{
  'name': instance.name,
  'orbital_distance_km': instance.orbitalDistanceKm,
  'equatorial_radius_km': instance.equatorialRadiusKm,
  'volume_km3': const IntOrStringToStringConverter().toJson(instance.volumeKm3),
  'mass_kg': instance.massKg,
  'density_g_cm3': instance.densityGCm3,
  'surface_gravity_m_s2': instance.surfaceGravityMS2,
  'escape_velocity_kmh': instance.escapeVelocityKmh,
  'day_length_earth_days': instance.dayLengthEarthDays,
  'year_length_earth_days': instance.yearLengthEarthDays,
  'year_length_earth_years': instance.yearLengthEarthYears,
  'orbital_speed_kmh': instance.orbitalSpeedKmh,
  'atmosphere_composition': instance.atmosphereComposition,
  'moons': instance.moons,
  'image': instance.image,
  'description': instance.description,
};
