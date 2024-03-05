// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activityControllerHash() =>
    r'e5ebed6491f9752b084e28d4ea055a0ec2f516be';

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

abstract class _$ActivityController
    extends BuildlessAutoDisposeAsyncNotifier<Activity> {
  late final String activityId;

  FutureOr<Activity> build(
    String activityId,
  );
}

/// See also [ActivityController].
@ProviderFor(ActivityController)
const activityControllerProvider = ActivityControllerFamily();

/// See also [ActivityController].
class ActivityControllerFamily extends Family<AsyncValue<Activity>> {
  /// See also [ActivityController].
  const ActivityControllerFamily();

  /// See also [ActivityController].
  ActivityControllerProvider call(
    String activityId,
  ) {
    return ActivityControllerProvider(
      activityId,
    );
  }

  @override
  ActivityControllerProvider getProviderOverride(
    covariant ActivityControllerProvider provider,
  ) {
    return call(
      provider.activityId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'activityControllerProvider';
}

/// See also [ActivityController].
class ActivityControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ActivityController, Activity> {
  /// See also [ActivityController].
  ActivityControllerProvider(
    this.activityId,
  ) : super.internal(
          () => ActivityController()..activityId = activityId,
          from: activityControllerProvider,
          name: r'activityControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activityControllerHash,
          dependencies: ActivityControllerFamily._dependencies,
          allTransitiveDependencies:
              ActivityControllerFamily._allTransitiveDependencies,
        );

  final String activityId;

  @override
  bool operator ==(Object other) {
    return other is ActivityControllerProvider &&
        other.activityId == activityId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activityId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<Activity> runNotifierBuild(
    covariant ActivityController notifier,
  ) {
    return notifier.build(
      activityId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
