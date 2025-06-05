// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPlanetsHash() => r'92fe478ff547d4cfc6617be9e55cfab4dacc9362';

/// A provider that fetches a list of planets from the repository.
///
/// Copied from [getPlanets].
@ProviderFor(getPlanets)
final getPlanetsProvider = AutoDisposeFutureProvider<List<Planet>>.internal(
  getPlanets,
  name: r'getPlanetsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getPlanetsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetPlanetsRef = AutoDisposeFutureProviderRef<List<Planet>>;
String _$getPlanetByNameHash() => r'e02c774d60c466676d649060d3c79facde49327b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// A provider that fetches a planet by its ID.
///
/// Copied from [getPlanetByName].
@ProviderFor(getPlanetByName)
const getPlanetByNameProvider = GetPlanetByNameFamily();

/// A provider that fetches a planet by its ID.
///
/// Copied from [getPlanetByName].
class GetPlanetByNameFamily extends Family<AsyncValue<Planet?>> {
  /// A provider that fetches a planet by its ID.
  ///
  /// Copied from [getPlanetByName].
  const GetPlanetByNameFamily();

  /// A provider that fetches a planet by its ID.
  ///
  /// Copied from [getPlanetByName].
  GetPlanetByNameProvider call(String planetName) {
    return GetPlanetByNameProvider(planetName);
  }

  @override
  GetPlanetByNameProvider getProviderOverride(
    covariant GetPlanetByNameProvider provider,
  ) {
    return call(provider.planetName);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlanetByNameProvider';
}

/// A provider that fetches a planet by its ID.
///
/// Copied from [getPlanetByName].
class GetPlanetByNameProvider extends AutoDisposeFutureProvider<Planet?> {
  /// A provider that fetches a planet by its ID.
  ///
  /// Copied from [getPlanetByName].
  GetPlanetByNameProvider(String planetName)
    : this._internal(
        (ref) => getPlanetByName(ref as GetPlanetByNameRef, planetName),
        from: getPlanetByNameProvider,
        name: r'getPlanetByNameProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getPlanetByNameHash,
        dependencies: GetPlanetByNameFamily._dependencies,
        allTransitiveDependencies:
            GetPlanetByNameFamily._allTransitiveDependencies,
        planetName: planetName,
      );

  GetPlanetByNameProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.planetName,
  }) : super.internal();

  final String planetName;

  @override
  Override overrideWith(
    FutureOr<Planet?> Function(GetPlanetByNameRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlanetByNameProvider._internal(
        (ref) => create(ref as GetPlanetByNameRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        planetName: planetName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Planet?> createElement() {
    return _GetPlanetByNameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlanetByNameProvider && other.planetName == planetName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, planetName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlanetByNameRef on AutoDisposeFutureProviderRef<Planet?> {
  /// The parameter `planetName` of this provider.
  String get planetName;
}

class _GetPlanetByNameProviderElement
    extends AutoDisposeFutureProviderElement<Planet?>
    with GetPlanetByNameRef {
  _GetPlanetByNameProviderElement(super.provider);

  @override
  String get planetName => (origin as GetPlanetByNameProvider).planetName;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
