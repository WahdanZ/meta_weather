// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _ErrorFailure call(String code) {
    return _ErrorFailure(
      code,
    );
  }

  _NetworkException networkException(dynamic message) {
    return _NetworkException(
      message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) networkException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? networkException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_NetworkException value) networkException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_NetworkException value)? networkException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$ErrorFailureCopyWith<$Res> {
  factory _$ErrorFailureCopyWith(
          _ErrorFailure value, $Res Function(_ErrorFailure) then) =
      __$ErrorFailureCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$ErrorFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ErrorFailureCopyWith<$Res> {
  __$ErrorFailureCopyWithImpl(
      _ErrorFailure _value, $Res Function(_ErrorFailure) _then)
      : super(_value, (v) => _then(v as _ErrorFailure));

  @override
  _ErrorFailure get _value => super._value as _ErrorFailure;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_ErrorFailure(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorFailure implements _ErrorFailure {
  const _$_ErrorFailure(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'Failure(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorFailure &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$ErrorFailureCopyWith<_ErrorFailure> get copyWith =>
      __$ErrorFailureCopyWithImpl<_ErrorFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) networkException,
  }) {
    return $default(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? networkException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_NetworkException value) networkException,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_NetworkException value)? networkException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ErrorFailure implements Failure {
  const factory _ErrorFailure(String code) = _$_ErrorFailure;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorFailureCopyWith<_ErrorFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NetworkExceptionCopyWith<$Res> {
  factory _$NetworkExceptionCopyWith(
          _NetworkException value, $Res Function(_NetworkException) then) =
      __$NetworkExceptionCopyWithImpl<$Res>;
  $Res call({dynamic message});
}

/// @nodoc
class __$NetworkExceptionCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NetworkExceptionCopyWith<$Res> {
  __$NetworkExceptionCopyWithImpl(
      _NetworkException _value, $Res Function(_NetworkException) _then)
      : super(_value, (v) => _then(v as _NetworkException));

  @override
  _NetworkException get _value => super._value as _NetworkException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_NetworkException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_NetworkException implements _NetworkException {
  const _$_NetworkException(this.message);

  @override
  final dynamic message;

  @override
  String toString() {
    return 'Failure.networkException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NetworkException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$NetworkExceptionCopyWith<_NetworkException> get copyWith =>
      __$NetworkExceptionCopyWithImpl<_NetworkException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) networkException,
  }) {
    return networkException(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? networkException,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_NetworkException value) networkException,
  }) {
    return networkException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_NetworkException value)? networkException,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException(this);
    }
    return orElse();
  }
}

abstract class _NetworkException implements Failure {
  const factory _NetworkException(dynamic message) = _$_NetworkException;

  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NetworkExceptionCopyWith<_NetworkException> get copyWith =>
      throw _privateConstructorUsedError;
}
