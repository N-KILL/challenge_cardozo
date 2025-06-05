// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Planet {

@JsonKey(name: "name") String get name;@JsonKey(name: "orbital_distance_km") int get orbitalDistanceKm;@JsonKey(name: "equatorial_radius_km") int get equatorialRadiusKm;@IntOrStringToStringConverter()@JsonKey(name: "volume_km3") String get volumeKm3;@JsonKey(name: "mass_kg") String get massKg;@JsonKey(name: "density_g_cm3") double get densityGCm3;@JsonKey(name: "surface_gravity_m_s2") double get surfaceGravityMS2;@JsonKey(name: "escape_velocity_kmh") int get escapeVelocityKmh;@JsonKey(name: "day_length_earth_days") double get dayLengthEarthDays;@JsonKey(name: "year_length_earth_days") double? get yearLengthEarthDays;@JsonKey(name: "year_length_earth_years") double? get yearLengthEarthYears;@JsonKey(name: "orbital_speed_kmh") int get orbitalSpeedKmh;@JsonKey(name: "atmosphere_composition") String get atmosphereComposition;@JsonKey(name: "moons") int get moons;@JsonKey(name: "image") String get image;@JsonKey(name: "description") String get description;
/// Create a copy of Planet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanetCopyWith<Planet> get copyWith => _$PlanetCopyWithImpl<Planet>(this as Planet, _$identity);

  /// Serializes this Planet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Planet&&(identical(other.name, name) || other.name == name)&&(identical(other.orbitalDistanceKm, orbitalDistanceKm) || other.orbitalDistanceKm == orbitalDistanceKm)&&(identical(other.equatorialRadiusKm, equatorialRadiusKm) || other.equatorialRadiusKm == equatorialRadiusKm)&&(identical(other.volumeKm3, volumeKm3) || other.volumeKm3 == volumeKm3)&&(identical(other.massKg, massKg) || other.massKg == massKg)&&(identical(other.densityGCm3, densityGCm3) || other.densityGCm3 == densityGCm3)&&(identical(other.surfaceGravityMS2, surfaceGravityMS2) || other.surfaceGravityMS2 == surfaceGravityMS2)&&(identical(other.escapeVelocityKmh, escapeVelocityKmh) || other.escapeVelocityKmh == escapeVelocityKmh)&&(identical(other.dayLengthEarthDays, dayLengthEarthDays) || other.dayLengthEarthDays == dayLengthEarthDays)&&(identical(other.yearLengthEarthDays, yearLengthEarthDays) || other.yearLengthEarthDays == yearLengthEarthDays)&&(identical(other.yearLengthEarthYears, yearLengthEarthYears) || other.yearLengthEarthYears == yearLengthEarthYears)&&(identical(other.orbitalSpeedKmh, orbitalSpeedKmh) || other.orbitalSpeedKmh == orbitalSpeedKmh)&&(identical(other.atmosphereComposition, atmosphereComposition) || other.atmosphereComposition == atmosphereComposition)&&(identical(other.moons, moons) || other.moons == moons)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,orbitalDistanceKm,equatorialRadiusKm,volumeKm3,massKg,densityGCm3,surfaceGravityMS2,escapeVelocityKmh,dayLengthEarthDays,yearLengthEarthDays,yearLengthEarthYears,orbitalSpeedKmh,atmosphereComposition,moons,image,description);

@override
String toString() {
  return 'Planet(name: $name, orbitalDistanceKm: $orbitalDistanceKm, equatorialRadiusKm: $equatorialRadiusKm, volumeKm3: $volumeKm3, massKg: $massKg, densityGCm3: $densityGCm3, surfaceGravityMS2: $surfaceGravityMS2, escapeVelocityKmh: $escapeVelocityKmh, dayLengthEarthDays: $dayLengthEarthDays, yearLengthEarthDays: $yearLengthEarthDays, yearLengthEarthYears: $yearLengthEarthYears, orbitalSpeedKmh: $orbitalSpeedKmh, atmosphereComposition: $atmosphereComposition, moons: $moons, image: $image, description: $description)';
}


}

/// @nodoc
abstract mixin class $PlanetCopyWith<$Res>  {
  factory $PlanetCopyWith(Planet value, $Res Function(Planet) _then) = _$PlanetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String name,@JsonKey(name: "orbital_distance_km") int orbitalDistanceKm,@JsonKey(name: "equatorial_radius_km") int equatorialRadiusKm,@IntOrStringToStringConverter()@JsonKey(name: "volume_km3") String volumeKm3,@JsonKey(name: "mass_kg") String massKg,@JsonKey(name: "density_g_cm3") double densityGCm3,@JsonKey(name: "surface_gravity_m_s2") double surfaceGravityMS2,@JsonKey(name: "escape_velocity_kmh") int escapeVelocityKmh,@JsonKey(name: "day_length_earth_days") double dayLengthEarthDays,@JsonKey(name: "year_length_earth_days") double? yearLengthEarthDays,@JsonKey(name: "year_length_earth_years") double? yearLengthEarthYears,@JsonKey(name: "orbital_speed_kmh") int orbitalSpeedKmh,@JsonKey(name: "atmosphere_composition") String atmosphereComposition,@JsonKey(name: "moons") int moons,@JsonKey(name: "image") String image,@JsonKey(name: "description") String description
});




}
/// @nodoc
class _$PlanetCopyWithImpl<$Res>
    implements $PlanetCopyWith<$Res> {
  _$PlanetCopyWithImpl(this._self, this._then);

  final Planet _self;
  final $Res Function(Planet) _then;

/// Create a copy of Planet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? orbitalDistanceKm = null,Object? equatorialRadiusKm = null,Object? volumeKm3 = null,Object? massKg = null,Object? densityGCm3 = null,Object? surfaceGravityMS2 = null,Object? escapeVelocityKmh = null,Object? dayLengthEarthDays = null,Object? yearLengthEarthDays = freezed,Object? yearLengthEarthYears = freezed,Object? orbitalSpeedKmh = null,Object? atmosphereComposition = null,Object? moons = null,Object? image = null,Object? description = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,orbitalDistanceKm: null == orbitalDistanceKm ? _self.orbitalDistanceKm : orbitalDistanceKm // ignore: cast_nullable_to_non_nullable
as int,equatorialRadiusKm: null == equatorialRadiusKm ? _self.equatorialRadiusKm : equatorialRadiusKm // ignore: cast_nullable_to_non_nullable
as int,volumeKm3: null == volumeKm3 ? _self.volumeKm3 : volumeKm3 // ignore: cast_nullable_to_non_nullable
as String,massKg: null == massKg ? _self.massKg : massKg // ignore: cast_nullable_to_non_nullable
as String,densityGCm3: null == densityGCm3 ? _self.densityGCm3 : densityGCm3 // ignore: cast_nullable_to_non_nullable
as double,surfaceGravityMS2: null == surfaceGravityMS2 ? _self.surfaceGravityMS2 : surfaceGravityMS2 // ignore: cast_nullable_to_non_nullable
as double,escapeVelocityKmh: null == escapeVelocityKmh ? _self.escapeVelocityKmh : escapeVelocityKmh // ignore: cast_nullable_to_non_nullable
as int,dayLengthEarthDays: null == dayLengthEarthDays ? _self.dayLengthEarthDays : dayLengthEarthDays // ignore: cast_nullable_to_non_nullable
as double,yearLengthEarthDays: freezed == yearLengthEarthDays ? _self.yearLengthEarthDays : yearLengthEarthDays // ignore: cast_nullable_to_non_nullable
as double?,yearLengthEarthYears: freezed == yearLengthEarthYears ? _self.yearLengthEarthYears : yearLengthEarthYears // ignore: cast_nullable_to_non_nullable
as double?,orbitalSpeedKmh: null == orbitalSpeedKmh ? _self.orbitalSpeedKmh : orbitalSpeedKmh // ignore: cast_nullable_to_non_nullable
as int,atmosphereComposition: null == atmosphereComposition ? _self.atmosphereComposition : atmosphereComposition // ignore: cast_nullable_to_non_nullable
as String,moons: null == moons ? _self.moons : moons // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Planet implements Planet {
  const _Planet({@JsonKey(name: "name") required this.name, @JsonKey(name: "orbital_distance_km") required this.orbitalDistanceKm, @JsonKey(name: "equatorial_radius_km") required this.equatorialRadiusKm, @IntOrStringToStringConverter()@JsonKey(name: "volume_km3") required this.volumeKm3, @JsonKey(name: "mass_kg") required this.massKg, @JsonKey(name: "density_g_cm3") required this.densityGCm3, @JsonKey(name: "surface_gravity_m_s2") required this.surfaceGravityMS2, @JsonKey(name: "escape_velocity_kmh") required this.escapeVelocityKmh, @JsonKey(name: "day_length_earth_days") required this.dayLengthEarthDays, @JsonKey(name: "year_length_earth_days") this.yearLengthEarthDays, @JsonKey(name: "year_length_earth_years") this.yearLengthEarthYears, @JsonKey(name: "orbital_speed_kmh") required this.orbitalSpeedKmh, @JsonKey(name: "atmosphere_composition") required this.atmosphereComposition, @JsonKey(name: "moons") required this.moons, @JsonKey(name: "image") required this.image, @JsonKey(name: "description") required this.description});
  factory _Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);

@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "orbital_distance_km") final  int orbitalDistanceKm;
@override@JsonKey(name: "equatorial_radius_km") final  int equatorialRadiusKm;
@override@IntOrStringToStringConverter()@JsonKey(name: "volume_km3") final  String volumeKm3;
@override@JsonKey(name: "mass_kg") final  String massKg;
@override@JsonKey(name: "density_g_cm3") final  double densityGCm3;
@override@JsonKey(name: "surface_gravity_m_s2") final  double surfaceGravityMS2;
@override@JsonKey(name: "escape_velocity_kmh") final  int escapeVelocityKmh;
@override@JsonKey(name: "day_length_earth_days") final  double dayLengthEarthDays;
@override@JsonKey(name: "year_length_earth_days") final  double? yearLengthEarthDays;
@override@JsonKey(name: "year_length_earth_years") final  double? yearLengthEarthYears;
@override@JsonKey(name: "orbital_speed_kmh") final  int orbitalSpeedKmh;
@override@JsonKey(name: "atmosphere_composition") final  String atmosphereComposition;
@override@JsonKey(name: "moons") final  int moons;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "description") final  String description;

/// Create a copy of Planet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanetCopyWith<_Planet> get copyWith => __$PlanetCopyWithImpl<_Planet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Planet&&(identical(other.name, name) || other.name == name)&&(identical(other.orbitalDistanceKm, orbitalDistanceKm) || other.orbitalDistanceKm == orbitalDistanceKm)&&(identical(other.equatorialRadiusKm, equatorialRadiusKm) || other.equatorialRadiusKm == equatorialRadiusKm)&&(identical(other.volumeKm3, volumeKm3) || other.volumeKm3 == volumeKm3)&&(identical(other.massKg, massKg) || other.massKg == massKg)&&(identical(other.densityGCm3, densityGCm3) || other.densityGCm3 == densityGCm3)&&(identical(other.surfaceGravityMS2, surfaceGravityMS2) || other.surfaceGravityMS2 == surfaceGravityMS2)&&(identical(other.escapeVelocityKmh, escapeVelocityKmh) || other.escapeVelocityKmh == escapeVelocityKmh)&&(identical(other.dayLengthEarthDays, dayLengthEarthDays) || other.dayLengthEarthDays == dayLengthEarthDays)&&(identical(other.yearLengthEarthDays, yearLengthEarthDays) || other.yearLengthEarthDays == yearLengthEarthDays)&&(identical(other.yearLengthEarthYears, yearLengthEarthYears) || other.yearLengthEarthYears == yearLengthEarthYears)&&(identical(other.orbitalSpeedKmh, orbitalSpeedKmh) || other.orbitalSpeedKmh == orbitalSpeedKmh)&&(identical(other.atmosphereComposition, atmosphereComposition) || other.atmosphereComposition == atmosphereComposition)&&(identical(other.moons, moons) || other.moons == moons)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,orbitalDistanceKm,equatorialRadiusKm,volumeKm3,massKg,densityGCm3,surfaceGravityMS2,escapeVelocityKmh,dayLengthEarthDays,yearLengthEarthDays,yearLengthEarthYears,orbitalSpeedKmh,atmosphereComposition,moons,image,description);

@override
String toString() {
  return 'Planet(name: $name, orbitalDistanceKm: $orbitalDistanceKm, equatorialRadiusKm: $equatorialRadiusKm, volumeKm3: $volumeKm3, massKg: $massKg, densityGCm3: $densityGCm3, surfaceGravityMS2: $surfaceGravityMS2, escapeVelocityKmh: $escapeVelocityKmh, dayLengthEarthDays: $dayLengthEarthDays, yearLengthEarthDays: $yearLengthEarthDays, yearLengthEarthYears: $yearLengthEarthYears, orbitalSpeedKmh: $orbitalSpeedKmh, atmosphereComposition: $atmosphereComposition, moons: $moons, image: $image, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PlanetCopyWith<$Res> implements $PlanetCopyWith<$Res> {
  factory _$PlanetCopyWith(_Planet value, $Res Function(_Planet) _then) = __$PlanetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String name,@JsonKey(name: "orbital_distance_km") int orbitalDistanceKm,@JsonKey(name: "equatorial_radius_km") int equatorialRadiusKm,@IntOrStringToStringConverter()@JsonKey(name: "volume_km3") String volumeKm3,@JsonKey(name: "mass_kg") String massKg,@JsonKey(name: "density_g_cm3") double densityGCm3,@JsonKey(name: "surface_gravity_m_s2") double surfaceGravityMS2,@JsonKey(name: "escape_velocity_kmh") int escapeVelocityKmh,@JsonKey(name: "day_length_earth_days") double dayLengthEarthDays,@JsonKey(name: "year_length_earth_days") double? yearLengthEarthDays,@JsonKey(name: "year_length_earth_years") double? yearLengthEarthYears,@JsonKey(name: "orbital_speed_kmh") int orbitalSpeedKmh,@JsonKey(name: "atmosphere_composition") String atmosphereComposition,@JsonKey(name: "moons") int moons,@JsonKey(name: "image") String image,@JsonKey(name: "description") String description
});




}
/// @nodoc
class __$PlanetCopyWithImpl<$Res>
    implements _$PlanetCopyWith<$Res> {
  __$PlanetCopyWithImpl(this._self, this._then);

  final _Planet _self;
  final $Res Function(_Planet) _then;

/// Create a copy of Planet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? orbitalDistanceKm = null,Object? equatorialRadiusKm = null,Object? volumeKm3 = null,Object? massKg = null,Object? densityGCm3 = null,Object? surfaceGravityMS2 = null,Object? escapeVelocityKmh = null,Object? dayLengthEarthDays = null,Object? yearLengthEarthDays = freezed,Object? yearLengthEarthYears = freezed,Object? orbitalSpeedKmh = null,Object? atmosphereComposition = null,Object? moons = null,Object? image = null,Object? description = null,}) {
  return _then(_Planet(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,orbitalDistanceKm: null == orbitalDistanceKm ? _self.orbitalDistanceKm : orbitalDistanceKm // ignore: cast_nullable_to_non_nullable
as int,equatorialRadiusKm: null == equatorialRadiusKm ? _self.equatorialRadiusKm : equatorialRadiusKm // ignore: cast_nullable_to_non_nullable
as int,volumeKm3: null == volumeKm3 ? _self.volumeKm3 : volumeKm3 // ignore: cast_nullable_to_non_nullable
as String,massKg: null == massKg ? _self.massKg : massKg // ignore: cast_nullable_to_non_nullable
as String,densityGCm3: null == densityGCm3 ? _self.densityGCm3 : densityGCm3 // ignore: cast_nullable_to_non_nullable
as double,surfaceGravityMS2: null == surfaceGravityMS2 ? _self.surfaceGravityMS2 : surfaceGravityMS2 // ignore: cast_nullable_to_non_nullable
as double,escapeVelocityKmh: null == escapeVelocityKmh ? _self.escapeVelocityKmh : escapeVelocityKmh // ignore: cast_nullable_to_non_nullable
as int,dayLengthEarthDays: null == dayLengthEarthDays ? _self.dayLengthEarthDays : dayLengthEarthDays // ignore: cast_nullable_to_non_nullable
as double,yearLengthEarthDays: freezed == yearLengthEarthDays ? _self.yearLengthEarthDays : yearLengthEarthDays // ignore: cast_nullable_to_non_nullable
as double?,yearLengthEarthYears: freezed == yearLengthEarthYears ? _self.yearLengthEarthYears : yearLengthEarthYears // ignore: cast_nullable_to_non_nullable
as double?,orbitalSpeedKmh: null == orbitalSpeedKmh ? _self.orbitalSpeedKmh : orbitalSpeedKmh // ignore: cast_nullable_to_non_nullable
as int,atmosphereComposition: null == atmosphereComposition ? _self.atmosphereComposition : atmosphereComposition // ignore: cast_nullable_to_non_nullable
as String,moons: null == moons ? _self.moons : moons // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
