// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CameraPosition cameraPosition) setPickUpLocation,
    required TResult Function(CameraPosition cameraPosition)
        setDestinationLocation,
    required TResult Function(Set<Marker> markers) setResultLocation,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult? Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult? Function(Set<Marker> markers)? setResultLocation,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult Function(Set<Marker> markers)? setResultLocation,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateSetPickUpLocation value)
        setPickUpLocation,
    required TResult Function(MapStateSetDestinationLocation value)
        setDestinationLocation,
    required TResult Function(MapStateSetResultLocation value)
        setResultLocation,
    required TResult Function(MapStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult? Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult? Function(MapStateSetResultLocation value)? setResultLocation,
    TResult? Function(MapStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult Function(MapStateSetResultLocation value)? setResultLocation,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MapStateIdleCopyWith<$Res> {
  factory _$$MapStateIdleCopyWith(
          _$MapStateIdle value, $Res Function(_$MapStateIdle) then) =
      __$$MapStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapStateIdleCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateIdle>
    implements _$$MapStateIdleCopyWith<$Res> {
  __$$MapStateIdleCopyWithImpl(
      _$MapStateIdle _value, $Res Function(_$MapStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapStateIdle implements MapStateIdle {
  const _$MapStateIdle();

  @override
  String toString() {
    return 'MapState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CameraPosition cameraPosition) setPickUpLocation,
    required TResult Function(CameraPosition cameraPosition)
        setDestinationLocation,
    required TResult Function(Set<Marker> markers) setResultLocation,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult? Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult? Function(Set<Marker> markers)? setResultLocation,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult Function(Set<Marker> markers)? setResultLocation,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateSetPickUpLocation value)
        setPickUpLocation,
    required TResult Function(MapStateSetDestinationLocation value)
        setDestinationLocation,
    required TResult Function(MapStateSetResultLocation value)
        setResultLocation,
    required TResult Function(MapStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult? Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult? Function(MapStateSetResultLocation value)? setResultLocation,
    TResult? Function(MapStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult Function(MapStateSetResultLocation value)? setResultLocation,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MapStateIdle implements MapState {
  const factory MapStateIdle() = _$MapStateIdle;
}

/// @nodoc
abstract class _$$MapStateSetPickUpLocationCopyWith<$Res> {
  factory _$$MapStateSetPickUpLocationCopyWith(
          _$MapStateSetPickUpLocation value,
          $Res Function(_$MapStateSetPickUpLocation) then) =
      __$$MapStateSetPickUpLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraPosition cameraPosition});
}

/// @nodoc
class __$$MapStateSetPickUpLocationCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateSetPickUpLocation>
    implements _$$MapStateSetPickUpLocationCopyWith<$Res> {
  __$$MapStateSetPickUpLocationCopyWithImpl(_$MapStateSetPickUpLocation _value,
      $Res Function(_$MapStateSetPickUpLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraPosition = null,
  }) {
    return _then(_$MapStateSetPickUpLocation(
      null == cameraPosition
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$MapStateSetPickUpLocation implements MapStateSetPickUpLocation {
  const _$MapStateSetPickUpLocation(this.cameraPosition);

  @override
  final CameraPosition cameraPosition;

  @override
  String toString() {
    return 'MapState.setPickUpLocation(cameraPosition: $cameraPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateSetPickUpLocation &&
            (identical(other.cameraPosition, cameraPosition) ||
                other.cameraPosition == cameraPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateSetPickUpLocationCopyWith<_$MapStateSetPickUpLocation>
      get copyWith => __$$MapStateSetPickUpLocationCopyWithImpl<
          _$MapStateSetPickUpLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CameraPosition cameraPosition) setPickUpLocation,
    required TResult Function(CameraPosition cameraPosition)
        setDestinationLocation,
    required TResult Function(Set<Marker> markers) setResultLocation,
    required TResult Function(String? message) error,
  }) {
    return setPickUpLocation(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult? Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult? Function(Set<Marker> markers)? setResultLocation,
    TResult? Function(String? message)? error,
  }) {
    return setPickUpLocation?.call(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult Function(Set<Marker> markers)? setResultLocation,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (setPickUpLocation != null) {
      return setPickUpLocation(cameraPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateSetPickUpLocation value)
        setPickUpLocation,
    required TResult Function(MapStateSetDestinationLocation value)
        setDestinationLocation,
    required TResult Function(MapStateSetResultLocation value)
        setResultLocation,
    required TResult Function(MapStateError value) error,
  }) {
    return setPickUpLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult? Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult? Function(MapStateSetResultLocation value)? setResultLocation,
    TResult? Function(MapStateError value)? error,
  }) {
    return setPickUpLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult Function(MapStateSetResultLocation value)? setResultLocation,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (setPickUpLocation != null) {
      return setPickUpLocation(this);
    }
    return orElse();
  }
}

abstract class MapStateSetPickUpLocation implements MapState {
  const factory MapStateSetPickUpLocation(final CameraPosition cameraPosition) =
      _$MapStateSetPickUpLocation;

  CameraPosition get cameraPosition;
  @JsonKey(ignore: true)
  _$$MapStateSetPickUpLocationCopyWith<_$MapStateSetPickUpLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapStateSetDestinationLocationCopyWith<$Res> {
  factory _$$MapStateSetDestinationLocationCopyWith(
          _$MapStateSetDestinationLocation value,
          $Res Function(_$MapStateSetDestinationLocation) then) =
      __$$MapStateSetDestinationLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraPosition cameraPosition});
}

/// @nodoc
class __$$MapStateSetDestinationLocationCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateSetDestinationLocation>
    implements _$$MapStateSetDestinationLocationCopyWith<$Res> {
  __$$MapStateSetDestinationLocationCopyWithImpl(
      _$MapStateSetDestinationLocation _value,
      $Res Function(_$MapStateSetDestinationLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraPosition = null,
  }) {
    return _then(_$MapStateSetDestinationLocation(
      null == cameraPosition
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$MapStateSetDestinationLocation
    implements MapStateSetDestinationLocation {
  const _$MapStateSetDestinationLocation(this.cameraPosition);

  @override
  final CameraPosition cameraPosition;

  @override
  String toString() {
    return 'MapState.setDestinationLocation(cameraPosition: $cameraPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateSetDestinationLocation &&
            (identical(other.cameraPosition, cameraPosition) ||
                other.cameraPosition == cameraPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateSetDestinationLocationCopyWith<_$MapStateSetDestinationLocation>
      get copyWith => __$$MapStateSetDestinationLocationCopyWithImpl<
          _$MapStateSetDestinationLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CameraPosition cameraPosition) setPickUpLocation,
    required TResult Function(CameraPosition cameraPosition)
        setDestinationLocation,
    required TResult Function(Set<Marker> markers) setResultLocation,
    required TResult Function(String? message) error,
  }) {
    return setDestinationLocation(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult? Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult? Function(Set<Marker> markers)? setResultLocation,
    TResult? Function(String? message)? error,
  }) {
    return setDestinationLocation?.call(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult Function(Set<Marker> markers)? setResultLocation,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (setDestinationLocation != null) {
      return setDestinationLocation(cameraPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateSetPickUpLocation value)
        setPickUpLocation,
    required TResult Function(MapStateSetDestinationLocation value)
        setDestinationLocation,
    required TResult Function(MapStateSetResultLocation value)
        setResultLocation,
    required TResult Function(MapStateError value) error,
  }) {
    return setDestinationLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult? Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult? Function(MapStateSetResultLocation value)? setResultLocation,
    TResult? Function(MapStateError value)? error,
  }) {
    return setDestinationLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult Function(MapStateSetResultLocation value)? setResultLocation,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (setDestinationLocation != null) {
      return setDestinationLocation(this);
    }
    return orElse();
  }
}

abstract class MapStateSetDestinationLocation implements MapState {
  const factory MapStateSetDestinationLocation(
      final CameraPosition cameraPosition) = _$MapStateSetDestinationLocation;

  CameraPosition get cameraPosition;
  @JsonKey(ignore: true)
  _$$MapStateSetDestinationLocationCopyWith<_$MapStateSetDestinationLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapStateSetResultLocationCopyWith<$Res> {
  factory _$$MapStateSetResultLocationCopyWith(
          _$MapStateSetResultLocation value,
          $Res Function(_$MapStateSetResultLocation) then) =
      __$$MapStateSetResultLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<Marker> markers});
}

/// @nodoc
class __$$MapStateSetResultLocationCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateSetResultLocation>
    implements _$$MapStateSetResultLocationCopyWith<$Res> {
  __$$MapStateSetResultLocationCopyWithImpl(_$MapStateSetResultLocation _value,
      $Res Function(_$MapStateSetResultLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markers = null,
  }) {
    return _then(_$MapStateSetResultLocation(
      null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ));
  }
}

/// @nodoc

class _$MapStateSetResultLocation implements MapStateSetResultLocation {
  const _$MapStateSetResultLocation(final Set<Marker> markers)
      : _markers = markers;

  final Set<Marker> _markers;
  @override
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  String toString() {
    return 'MapState.setResultLocation(markers: $markers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateSetResultLocation &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_markers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateSetResultLocationCopyWith<_$MapStateSetResultLocation>
      get copyWith => __$$MapStateSetResultLocationCopyWithImpl<
          _$MapStateSetResultLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CameraPosition cameraPosition) setPickUpLocation,
    required TResult Function(CameraPosition cameraPosition)
        setDestinationLocation,
    required TResult Function(Set<Marker> markers) setResultLocation,
    required TResult Function(String? message) error,
  }) {
    return setResultLocation(markers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult? Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult? Function(Set<Marker> markers)? setResultLocation,
    TResult? Function(String? message)? error,
  }) {
    return setResultLocation?.call(markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult Function(Set<Marker> markers)? setResultLocation,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (setResultLocation != null) {
      return setResultLocation(markers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateSetPickUpLocation value)
        setPickUpLocation,
    required TResult Function(MapStateSetDestinationLocation value)
        setDestinationLocation,
    required TResult Function(MapStateSetResultLocation value)
        setResultLocation,
    required TResult Function(MapStateError value) error,
  }) {
    return setResultLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult? Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult? Function(MapStateSetResultLocation value)? setResultLocation,
    TResult? Function(MapStateError value)? error,
  }) {
    return setResultLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult Function(MapStateSetResultLocation value)? setResultLocation,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (setResultLocation != null) {
      return setResultLocation(this);
    }
    return orElse();
  }
}

abstract class MapStateSetResultLocation implements MapState {
  const factory MapStateSetResultLocation(final Set<Marker> markers) =
      _$MapStateSetResultLocation;

  Set<Marker> get markers;
  @JsonKey(ignore: true)
  _$$MapStateSetResultLocationCopyWith<_$MapStateSetResultLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapStateErrorCopyWith<$Res> {
  factory _$$MapStateErrorCopyWith(
          _$MapStateError value, $Res Function(_$MapStateError) then) =
      __$$MapStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$MapStateErrorCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateError>
    implements _$$MapStateErrorCopyWith<$Res> {
  __$$MapStateErrorCopyWithImpl(
      _$MapStateError _value, $Res Function(_$MapStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MapStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MapStateError implements MapStateError {
  const _$MapStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'MapState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateErrorCopyWith<_$MapStateError> get copyWith =>
      __$$MapStateErrorCopyWithImpl<_$MapStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CameraPosition cameraPosition) setPickUpLocation,
    required TResult Function(CameraPosition cameraPosition)
        setDestinationLocation,
    required TResult Function(Set<Marker> markers) setResultLocation,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult? Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult? Function(Set<Marker> markers)? setResultLocation,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CameraPosition cameraPosition)? setPickUpLocation,
    TResult Function(CameraPosition cameraPosition)? setDestinationLocation,
    TResult Function(Set<Marker> markers)? setResultLocation,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateSetPickUpLocation value)
        setPickUpLocation,
    required TResult Function(MapStateSetDestinationLocation value)
        setDestinationLocation,
    required TResult Function(MapStateSetResultLocation value)
        setResultLocation,
    required TResult Function(MapStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult? Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult? Function(MapStateSetResultLocation value)? setResultLocation,
    TResult? Function(MapStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateSetPickUpLocation value)? setPickUpLocation,
    TResult Function(MapStateSetDestinationLocation value)?
        setDestinationLocation,
    TResult Function(MapStateSetResultLocation value)? setResultLocation,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MapStateError implements MapState {
  const factory MapStateError({final String? message}) = _$MapStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$MapStateErrorCopyWith<_$MapStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
