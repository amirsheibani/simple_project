// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infinity_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InfinityListState<E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<E?>? items, String? message) loading,
    required TResult Function(List<E?>? items, String? message) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<E?>? items, String? message)? loading,
    TResult? Function(List<E?>? items, String? message)? success,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<E?>? items, String? message)? loading,
    TResult Function(List<E?>? items, String? message)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfinityListStateIdle<E> value) idle,
    required TResult Function(InfinityListStateLoading<E> value) loading,
    required TResult Function(InfinityListStateSuccess<E> value) success,
    required TResult Function(InfinityListStateError<E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfinityListStateIdle<E> value)? idle,
    TResult? Function(InfinityListStateLoading<E> value)? loading,
    TResult? Function(InfinityListStateSuccess<E> value)? success,
    TResult? Function(InfinityListStateError<E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfinityListStateIdle<E> value)? idle,
    TResult Function(InfinityListStateLoading<E> value)? loading,
    TResult Function(InfinityListStateSuccess<E> value)? success,
    TResult Function(InfinityListStateError<E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfinityListStateCopyWith<E, $Res> {
  factory $InfinityListStateCopyWith(InfinityListState<E> value,
          $Res Function(InfinityListState<E>) then) =
      _$InfinityListStateCopyWithImpl<E, $Res, InfinityListState<E>>;
}

/// @nodoc
class _$InfinityListStateCopyWithImpl<E, $Res,
        $Val extends InfinityListState<E>>
    implements $InfinityListStateCopyWith<E, $Res> {
  _$InfinityListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InfinityListStateIdleCopyWith<E, $Res> {
  factory _$$InfinityListStateIdleCopyWith(_$InfinityListStateIdle<E> value,
          $Res Function(_$InfinityListStateIdle<E>) then) =
      __$$InfinityListStateIdleCopyWithImpl<E, $Res>;
}

/// @nodoc
class __$$InfinityListStateIdleCopyWithImpl<E, $Res>
    extends _$InfinityListStateCopyWithImpl<E, $Res, _$InfinityListStateIdle<E>>
    implements _$$InfinityListStateIdleCopyWith<E, $Res> {
  __$$InfinityListStateIdleCopyWithImpl(_$InfinityListStateIdle<E> _value,
      $Res Function(_$InfinityListStateIdle<E>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InfinityListStateIdle<E> implements InfinityListStateIdle<E> {
  const _$InfinityListStateIdle();

  @override
  String toString() {
    return 'InfinityListState<$E>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfinityListStateIdle<E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<E?>? items, String? message) loading,
    required TResult Function(List<E?>? items, String? message) success,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<E?>? items, String? message)? loading,
    TResult? Function(List<E?>? items, String? message)? success,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<E?>? items, String? message)? loading,
    TResult Function(List<E?>? items, String? message)? success,
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
    required TResult Function(InfinityListStateIdle<E> value) idle,
    required TResult Function(InfinityListStateLoading<E> value) loading,
    required TResult Function(InfinityListStateSuccess<E> value) success,
    required TResult Function(InfinityListStateError<E> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfinityListStateIdle<E> value)? idle,
    TResult? Function(InfinityListStateLoading<E> value)? loading,
    TResult? Function(InfinityListStateSuccess<E> value)? success,
    TResult? Function(InfinityListStateError<E> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfinityListStateIdle<E> value)? idle,
    TResult Function(InfinityListStateLoading<E> value)? loading,
    TResult Function(InfinityListStateSuccess<E> value)? success,
    TResult Function(InfinityListStateError<E> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class InfinityListStateIdle<E> implements InfinityListState<E> {
  const factory InfinityListStateIdle() = _$InfinityListStateIdle<E>;
}

/// @nodoc
abstract class _$$InfinityListStateLoadingCopyWith<E, $Res> {
  factory _$$InfinityListStateLoadingCopyWith(
          _$InfinityListStateLoading<E> value,
          $Res Function(_$InfinityListStateLoading<E>) then) =
      __$$InfinityListStateLoadingCopyWithImpl<E, $Res>;
  @useResult
  $Res call({List<E?>? items, String? message});
}

/// @nodoc
class __$$InfinityListStateLoadingCopyWithImpl<E, $Res>
    extends _$InfinityListStateCopyWithImpl<E, $Res,
        _$InfinityListStateLoading<E>>
    implements _$$InfinityListStateLoadingCopyWith<E, $Res> {
  __$$InfinityListStateLoadingCopyWithImpl(_$InfinityListStateLoading<E> _value,
      $Res Function(_$InfinityListStateLoading<E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? message = freezed,
  }) {
    return _then(_$InfinityListStateLoading<E>(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<E?>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InfinityListStateLoading<E> implements InfinityListStateLoading<E> {
  const _$InfinityListStateLoading({final List<E?>? items, this.message})
      : _items = items;

  final List<E?>? _items;
  @override
  List<E?>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'InfinityListState<$E>.loading(items: $items, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfinityListStateLoading<E> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfinityListStateLoadingCopyWith<E, _$InfinityListStateLoading<E>>
      get copyWith => __$$InfinityListStateLoadingCopyWithImpl<E,
          _$InfinityListStateLoading<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<E?>? items, String? message) loading,
    required TResult Function(List<E?>? items, String? message) success,
    required TResult Function(String? message) error,
  }) {
    return loading(items, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<E?>? items, String? message)? loading,
    TResult? Function(List<E?>? items, String? message)? success,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call(items, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<E?>? items, String? message)? loading,
    TResult Function(List<E?>? items, String? message)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(items, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfinityListStateIdle<E> value) idle,
    required TResult Function(InfinityListStateLoading<E> value) loading,
    required TResult Function(InfinityListStateSuccess<E> value) success,
    required TResult Function(InfinityListStateError<E> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfinityListStateIdle<E> value)? idle,
    TResult? Function(InfinityListStateLoading<E> value)? loading,
    TResult? Function(InfinityListStateSuccess<E> value)? success,
    TResult? Function(InfinityListStateError<E> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfinityListStateIdle<E> value)? idle,
    TResult Function(InfinityListStateLoading<E> value)? loading,
    TResult Function(InfinityListStateSuccess<E> value)? success,
    TResult Function(InfinityListStateError<E> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InfinityListStateLoading<E> implements InfinityListState<E> {
  const factory InfinityListStateLoading(
      {final List<E?>? items,
      final String? message}) = _$InfinityListStateLoading<E>;

  List<E?>? get items;
  String? get message;
  @JsonKey(ignore: true)
  _$$InfinityListStateLoadingCopyWith<E, _$InfinityListStateLoading<E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InfinityListStateSuccessCopyWith<E, $Res> {
  factory _$$InfinityListStateSuccessCopyWith(
          _$InfinityListStateSuccess<E> value,
          $Res Function(_$InfinityListStateSuccess<E>) then) =
      __$$InfinityListStateSuccessCopyWithImpl<E, $Res>;
  @useResult
  $Res call({List<E?>? items, String? message});
}

/// @nodoc
class __$$InfinityListStateSuccessCopyWithImpl<E, $Res>
    extends _$InfinityListStateCopyWithImpl<E, $Res,
        _$InfinityListStateSuccess<E>>
    implements _$$InfinityListStateSuccessCopyWith<E, $Res> {
  __$$InfinityListStateSuccessCopyWithImpl(_$InfinityListStateSuccess<E> _value,
      $Res Function(_$InfinityListStateSuccess<E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? message = freezed,
  }) {
    return _then(_$InfinityListStateSuccess<E>(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<E?>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InfinityListStateSuccess<E> implements InfinityListStateSuccess<E> {
  const _$InfinityListStateSuccess({final List<E?>? items, this.message})
      : _items = items;

  final List<E?>? _items;
  @override
  List<E?>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'InfinityListState<$E>.success(items: $items, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfinityListStateSuccess<E> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfinityListStateSuccessCopyWith<E, _$InfinityListStateSuccess<E>>
      get copyWith => __$$InfinityListStateSuccessCopyWithImpl<E,
          _$InfinityListStateSuccess<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<E?>? items, String? message) loading,
    required TResult Function(List<E?>? items, String? message) success,
    required TResult Function(String? message) error,
  }) {
    return success(items, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<E?>? items, String? message)? loading,
    TResult? Function(List<E?>? items, String? message)? success,
    TResult? Function(String? message)? error,
  }) {
    return success?.call(items, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<E?>? items, String? message)? loading,
    TResult Function(List<E?>? items, String? message)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfinityListStateIdle<E> value) idle,
    required TResult Function(InfinityListStateLoading<E> value) loading,
    required TResult Function(InfinityListStateSuccess<E> value) success,
    required TResult Function(InfinityListStateError<E> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfinityListStateIdle<E> value)? idle,
    TResult? Function(InfinityListStateLoading<E> value)? loading,
    TResult? Function(InfinityListStateSuccess<E> value)? success,
    TResult? Function(InfinityListStateError<E> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfinityListStateIdle<E> value)? idle,
    TResult Function(InfinityListStateLoading<E> value)? loading,
    TResult Function(InfinityListStateSuccess<E> value)? success,
    TResult Function(InfinityListStateError<E> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class InfinityListStateSuccess<E> implements InfinityListState<E> {
  const factory InfinityListStateSuccess(
      {final List<E?>? items,
      final String? message}) = _$InfinityListStateSuccess<E>;

  List<E?>? get items;
  String? get message;
  @JsonKey(ignore: true)
  _$$InfinityListStateSuccessCopyWith<E, _$InfinityListStateSuccess<E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InfinityListStateErrorCopyWith<E, $Res> {
  factory _$$InfinityListStateErrorCopyWith(_$InfinityListStateError<E> value,
          $Res Function(_$InfinityListStateError<E>) then) =
      __$$InfinityListStateErrorCopyWithImpl<E, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InfinityListStateErrorCopyWithImpl<E, $Res>
    extends _$InfinityListStateCopyWithImpl<E, $Res,
        _$InfinityListStateError<E>>
    implements _$$InfinityListStateErrorCopyWith<E, $Res> {
  __$$InfinityListStateErrorCopyWithImpl(_$InfinityListStateError<E> _value,
      $Res Function(_$InfinityListStateError<E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InfinityListStateError<E>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InfinityListStateError<E> implements InfinityListStateError<E> {
  const _$InfinityListStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'InfinityListState<$E>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfinityListStateError<E> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfinityListStateErrorCopyWith<E, _$InfinityListStateError<E>>
      get copyWith => __$$InfinityListStateErrorCopyWithImpl<E,
          _$InfinityListStateError<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<E?>? items, String? message) loading,
    required TResult Function(List<E?>? items, String? message) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<E?>? items, String? message)? loading,
    TResult? Function(List<E?>? items, String? message)? success,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<E?>? items, String? message)? loading,
    TResult Function(List<E?>? items, String? message)? success,
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
    required TResult Function(InfinityListStateIdle<E> value) idle,
    required TResult Function(InfinityListStateLoading<E> value) loading,
    required TResult Function(InfinityListStateSuccess<E> value) success,
    required TResult Function(InfinityListStateError<E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfinityListStateIdle<E> value)? idle,
    TResult? Function(InfinityListStateLoading<E> value)? loading,
    TResult? Function(InfinityListStateSuccess<E> value)? success,
    TResult? Function(InfinityListStateError<E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfinityListStateIdle<E> value)? idle,
    TResult Function(InfinityListStateLoading<E> value)? loading,
    TResult Function(InfinityListStateSuccess<E> value)? success,
    TResult Function(InfinityListStateError<E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InfinityListStateError<E> implements InfinityListState<E> {
  const factory InfinityListStateError({final String? message}) =
      _$InfinityListStateError<E>;

  String? get message;
  @JsonKey(ignore: true)
  _$$InfinityListStateErrorCopyWith<E, _$InfinityListStateError<E>>
      get copyWith => throw _privateConstructorUsedError;
}
