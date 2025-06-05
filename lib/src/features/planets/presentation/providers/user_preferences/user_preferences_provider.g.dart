// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getFavoritePlanetsHash() =>
    r'9494f4e9dc3c0d3d36980901c22e349682239e5f';

/// See also [getFavoritePlanets].
@ProviderFor(getFavoritePlanets)
final getFavoritePlanetsProvider =
    AutoDisposeFutureProvider<List<String>>.internal(
      getFavoritePlanets,
      name: r'getFavoritePlanetsProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$getFavoritePlanetsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetFavoritePlanetsRef = AutoDisposeFutureProviderRef<List<String>>;
String _$addFavoritePlanetHash() => r'c379f850e6db6ba109712a56380c381b993b84c1';

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

/// See also [addFavoritePlanet].
@ProviderFor(addFavoritePlanet)
const addFavoritePlanetProvider = AddFavoritePlanetFamily();

/// See also [addFavoritePlanet].
class AddFavoritePlanetFamily extends Family<AsyncValue<void>> {
  /// See also [addFavoritePlanet].
  const AddFavoritePlanetFamily();

  /// See also [addFavoritePlanet].
  AddFavoritePlanetProvider call(String planetId) {
    return AddFavoritePlanetProvider(planetId);
  }

  @override
  AddFavoritePlanetProvider getProviderOverride(
    covariant AddFavoritePlanetProvider provider,
  ) {
    return call(provider.planetId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addFavoritePlanetProvider';
}

/// See also [addFavoritePlanet].
class AddFavoritePlanetProvider extends AutoDisposeFutureProvider<void> {
  /// See also [addFavoritePlanet].
  AddFavoritePlanetProvider(String planetId)
    : this._internal(
        (ref) => addFavoritePlanet(ref as AddFavoritePlanetRef, planetId),
        from: addFavoritePlanetProvider,
        name: r'addFavoritePlanetProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$addFavoritePlanetHash,
        dependencies: AddFavoritePlanetFamily._dependencies,
        allTransitiveDependencies:
            AddFavoritePlanetFamily._allTransitiveDependencies,
        planetId: planetId,
      );

  AddFavoritePlanetProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.planetId,
  }) : super.internal();

  final String planetId;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddFavoritePlanetRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddFavoritePlanetProvider._internal(
        (ref) => create(ref as AddFavoritePlanetRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        planetId: planetId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddFavoritePlanetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddFavoritePlanetProvider && other.planetId == planetId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, planetId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddFavoritePlanetRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `planetId` of this provider.
  String get planetId;
}

class _AddFavoritePlanetProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with AddFavoritePlanetRef {
  _AddFavoritePlanetProviderElement(super.provider);

  @override
  String get planetId => (origin as AddFavoritePlanetProvider).planetId;
}

String _$removeFavoritePlanetHash() =>
    r'38f156cd712f403284bc3b4e44a80d2a0e6a1521';

/// See also [removeFavoritePlanet].
@ProviderFor(removeFavoritePlanet)
const removeFavoritePlanetProvider = RemoveFavoritePlanetFamily();

/// See also [removeFavoritePlanet].
class RemoveFavoritePlanetFamily extends Family<AsyncValue<void>> {
  /// See also [removeFavoritePlanet].
  const RemoveFavoritePlanetFamily();

  /// See also [removeFavoritePlanet].
  RemoveFavoritePlanetProvider call(String planetId) {
    return RemoveFavoritePlanetProvider(planetId);
  }

  @override
  RemoveFavoritePlanetProvider getProviderOverride(
    covariant RemoveFavoritePlanetProvider provider,
  ) {
    return call(provider.planetId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'removeFavoritePlanetProvider';
}

/// See also [removeFavoritePlanet].
class RemoveFavoritePlanetProvider extends AutoDisposeFutureProvider<void> {
  /// See also [removeFavoritePlanet].
  RemoveFavoritePlanetProvider(String planetId)
    : this._internal(
        (ref) => removeFavoritePlanet(ref as RemoveFavoritePlanetRef, planetId),
        from: removeFavoritePlanetProvider,
        name: r'removeFavoritePlanetProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$removeFavoritePlanetHash,
        dependencies: RemoveFavoritePlanetFamily._dependencies,
        allTransitiveDependencies:
            RemoveFavoritePlanetFamily._allTransitiveDependencies,
        planetId: planetId,
      );

  RemoveFavoritePlanetProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.planetId,
  }) : super.internal();

  final String planetId;

  @override
  Override overrideWith(
    FutureOr<void> Function(RemoveFavoritePlanetRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RemoveFavoritePlanetProvider._internal(
        (ref) => create(ref as RemoveFavoritePlanetRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        planetId: planetId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _RemoveFavoritePlanetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoveFavoritePlanetProvider && other.planetId == planetId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, planetId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RemoveFavoritePlanetRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `planetId` of this provider.
  String get planetId;
}

class _RemoveFavoritePlanetProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with RemoveFavoritePlanetRef {
  _RemoveFavoritePlanetProviderElement(super.provider);

  @override
  String get planetId => (origin as RemoveFavoritePlanetProvider).planetId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
