// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeAndLanguageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ThemeType? themeType, LanguageType? languageType)
        success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ThemeType? themeType, LanguageType? languageType)?
        success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ThemeType? themeType, LanguageType? languageType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeAndLanguageStateIdle value) idle,
    required TResult Function(ThemeAndLanguageStateSuccess value) success,
    required TResult Function(ThemeAndLanguageStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeAndLanguageStateIdle value)? idle,
    TResult? Function(ThemeAndLanguageStateSuccess value)? success,
    TResult? Function(ThemeAndLanguageStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeAndLanguageStateIdle value)? idle,
    TResult Function(ThemeAndLanguageStateSuccess value)? success,
    TResult Function(ThemeAndLanguageStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeAndLanguageStateCopyWith<$Res> {
  factory $ThemeAndLanguageStateCopyWith(ThemeAndLanguageState value,
          $Res Function(ThemeAndLanguageState) then) =
      _$ThemeAndLanguageStateCopyWithImpl<$Res, ThemeAndLanguageState>;
}

/// @nodoc
class _$ThemeAndLanguageStateCopyWithImpl<$Res,
        $Val extends ThemeAndLanguageState>
    implements $ThemeAndLanguageStateCopyWith<$Res> {
  _$ThemeAndLanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeAndLanguageStateIdleCopyWith<$Res> {
  factory _$$ThemeAndLanguageStateIdleCopyWith(
          _$ThemeAndLanguageStateIdle value,
          $Res Function(_$ThemeAndLanguageStateIdle) then) =
      __$$ThemeAndLanguageStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeAndLanguageStateIdleCopyWithImpl<$Res>
    extends _$ThemeAndLanguageStateCopyWithImpl<$Res,
        _$ThemeAndLanguageStateIdle>
    implements _$$ThemeAndLanguageStateIdleCopyWith<$Res> {
  __$$ThemeAndLanguageStateIdleCopyWithImpl(_$ThemeAndLanguageStateIdle _value,
      $Res Function(_$ThemeAndLanguageStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeAndLanguageStateIdle implements ThemeAndLanguageStateIdle {
  const _$ThemeAndLanguageStateIdle();

  @override
  String toString() {
    return 'ThemeAndLanguageState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeAndLanguageStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ThemeType? themeType, LanguageType? languageType)
        success,
    required TResult Function(String message) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ThemeType? themeType, LanguageType? languageType)?
        success,
    TResult? Function(String message)? failed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ThemeType? themeType, LanguageType? languageType)? success,
    TResult Function(String message)? failed,
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
    required TResult Function(ThemeAndLanguageStateIdle value) idle,
    required TResult Function(ThemeAndLanguageStateSuccess value) success,
    required TResult Function(ThemeAndLanguageStateFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeAndLanguageStateIdle value)? idle,
    TResult? Function(ThemeAndLanguageStateSuccess value)? success,
    TResult? Function(ThemeAndLanguageStateFailed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeAndLanguageStateIdle value)? idle,
    TResult Function(ThemeAndLanguageStateSuccess value)? success,
    TResult Function(ThemeAndLanguageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ThemeAndLanguageStateIdle implements ThemeAndLanguageState {
  const factory ThemeAndLanguageStateIdle() = _$ThemeAndLanguageStateIdle;
}

/// @nodoc
abstract class _$$ThemeAndLanguageStateSuccessCopyWith<$Res> {
  factory _$$ThemeAndLanguageStateSuccessCopyWith(
          _$ThemeAndLanguageStateSuccess value,
          $Res Function(_$ThemeAndLanguageStateSuccess) then) =
      __$$ThemeAndLanguageStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeType? themeType, LanguageType? languageType});
}

/// @nodoc
class __$$ThemeAndLanguageStateSuccessCopyWithImpl<$Res>
    extends _$ThemeAndLanguageStateCopyWithImpl<$Res,
        _$ThemeAndLanguageStateSuccess>
    implements _$$ThemeAndLanguageStateSuccessCopyWith<$Res> {
  __$$ThemeAndLanguageStateSuccessCopyWithImpl(
      _$ThemeAndLanguageStateSuccess _value,
      $Res Function(_$ThemeAndLanguageStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = freezed,
    Object? languageType = freezed,
  }) {
    return _then(_$ThemeAndLanguageStateSuccess(
      themeType: freezed == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType?,
      languageType: freezed == languageType
          ? _value.languageType
          : languageType // ignore: cast_nullable_to_non_nullable
              as LanguageType?,
    ));
  }
}

/// @nodoc

class _$ThemeAndLanguageStateSuccess implements ThemeAndLanguageStateSuccess {
  const _$ThemeAndLanguageStateSuccess({this.themeType, this.languageType});

  @override
  final ThemeType? themeType;
  @override
  final LanguageType? languageType;

  @override
  String toString() {
    return 'ThemeAndLanguageState.success(themeType: $themeType, languageType: $languageType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeAndLanguageStateSuccess &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType) &&
            (identical(other.languageType, languageType) ||
                other.languageType == languageType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeType, languageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeAndLanguageStateSuccessCopyWith<_$ThemeAndLanguageStateSuccess>
      get copyWith => __$$ThemeAndLanguageStateSuccessCopyWithImpl<
          _$ThemeAndLanguageStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ThemeType? themeType, LanguageType? languageType)
        success,
    required TResult Function(String message) failed,
  }) {
    return success(themeType, languageType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ThemeType? themeType, LanguageType? languageType)?
        success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call(themeType, languageType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ThemeType? themeType, LanguageType? languageType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(themeType, languageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeAndLanguageStateIdle value) idle,
    required TResult Function(ThemeAndLanguageStateSuccess value) success,
    required TResult Function(ThemeAndLanguageStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeAndLanguageStateIdle value)? idle,
    TResult? Function(ThemeAndLanguageStateSuccess value)? success,
    TResult? Function(ThemeAndLanguageStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeAndLanguageStateIdle value)? idle,
    TResult Function(ThemeAndLanguageStateSuccess value)? success,
    TResult Function(ThemeAndLanguageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ThemeAndLanguageStateSuccess implements ThemeAndLanguageState {
  const factory ThemeAndLanguageStateSuccess(
      {final ThemeType? themeType,
      final LanguageType? languageType}) = _$ThemeAndLanguageStateSuccess;

  ThemeType? get themeType;
  LanguageType? get languageType;
  @JsonKey(ignore: true)
  _$$ThemeAndLanguageStateSuccessCopyWith<_$ThemeAndLanguageStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeAndLanguageStateFailedCopyWith<$Res> {
  factory _$$ThemeAndLanguageStateFailedCopyWith(
          _$ThemeAndLanguageStateFailed value,
          $Res Function(_$ThemeAndLanguageStateFailed) then) =
      __$$ThemeAndLanguageStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ThemeAndLanguageStateFailedCopyWithImpl<$Res>
    extends _$ThemeAndLanguageStateCopyWithImpl<$Res,
        _$ThemeAndLanguageStateFailed>
    implements _$$ThemeAndLanguageStateFailedCopyWith<$Res> {
  __$$ThemeAndLanguageStateFailedCopyWithImpl(
      _$ThemeAndLanguageStateFailed _value,
      $Res Function(_$ThemeAndLanguageStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ThemeAndLanguageStateFailed(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThemeAndLanguageStateFailed implements ThemeAndLanguageStateFailed {
  const _$ThemeAndLanguageStateFailed(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ThemeAndLanguageState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeAndLanguageStateFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeAndLanguageStateFailedCopyWith<_$ThemeAndLanguageStateFailed>
      get copyWith => __$$ThemeAndLanguageStateFailedCopyWithImpl<
          _$ThemeAndLanguageStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ThemeType? themeType, LanguageType? languageType)
        success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ThemeType? themeType, LanguageType? languageType)?
        success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ThemeType? themeType, LanguageType? languageType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeAndLanguageStateIdle value) idle,
    required TResult Function(ThemeAndLanguageStateSuccess value) success,
    required TResult Function(ThemeAndLanguageStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeAndLanguageStateIdle value)? idle,
    TResult? Function(ThemeAndLanguageStateSuccess value)? success,
    TResult? Function(ThemeAndLanguageStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeAndLanguageStateIdle value)? idle,
    TResult Function(ThemeAndLanguageStateSuccess value)? success,
    TResult Function(ThemeAndLanguageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ThemeAndLanguageStateFailed implements ThemeAndLanguageState {
  const factory ThemeAndLanguageStateFailed(final String message) =
      _$ThemeAndLanguageStateFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$ThemeAndLanguageStateFailedCopyWith<_$ThemeAndLanguageStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}
