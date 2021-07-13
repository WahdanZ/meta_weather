// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HttpErrorsTearOff {
  const _$HttpErrorsTearOff();

  _BadGateWay badGateWay({String? exception}) {
    return _BadGateWay(
      exception: exception,
    );
  }

  _InternalServiceError internalServiceError({String? exception}) {
    return _InternalServiceError(
      exception: exception,
    );
  }

  _RemovedResourceFound removedResourceFound({String? exception}) {
    return _RemovedResourceFound(
      exception: exception,
    );
  }

  _ResourceForbidden resourceForbidden({String? exception}) {
    return _ResourceForbidden(
      exception: exception,
    );
  }

  _ResourceNotFound resourceNotFound({String? exception}) {
    return _ResourceNotFound(
      exception: exception,
    );
  }

  _ResourceRemoved resourceRemoved({String? exception}) {
    return _ResourceRemoved(
      exception: exception,
    );
  }
}

/// @nodoc
const $HttpErrors = _$HttpErrorsTearOff();

/// @nodoc
mixin _$HttpErrors {
  String? get exception => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? exception) badGateWay,
    required TResult Function(String? exception) internalServiceError,
    required TResult Function(String? exception) removedResourceFound,
    required TResult Function(String? exception) resourceForbidden,
    required TResult Function(String? exception) resourceNotFound,
    required TResult Function(String? exception) resourceRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? exception)? badGateWay,
    TResult Function(String? exception)? internalServiceError,
    TResult Function(String? exception)? removedResourceFound,
    TResult Function(String? exception)? resourceForbidden,
    TResult Function(String? exception)? resourceNotFound,
    TResult Function(String? exception)? resourceRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadGateWay value) badGateWay,
    required TResult Function(_InternalServiceError value) internalServiceError,
    required TResult Function(_RemovedResourceFound value) removedResourceFound,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_ResourceNotFound value) resourceNotFound,
    required TResult Function(_ResourceRemoved value) resourceRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadGateWay value)? badGateWay,
    TResult Function(_InternalServiceError value)? internalServiceError,
    TResult Function(_RemovedResourceFound value)? removedResourceFound,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_ResourceNotFound value)? resourceNotFound,
    TResult Function(_ResourceRemoved value)? resourceRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpErrorsCopyWith<HttpErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpErrorsCopyWith<$Res> {
  factory $HttpErrorsCopyWith(
          HttpErrors value, $Res Function(HttpErrors) then) =
      _$HttpErrorsCopyWithImpl<$Res>;
  $Res call({String? exception});
}

/// @nodoc
class _$HttpErrorsCopyWithImpl<$Res> implements $HttpErrorsCopyWith<$Res> {
  _$HttpErrorsCopyWithImpl(this._value, this._then);

  final HttpErrors _value;
  // ignore: unused_field
  final $Res Function(HttpErrors) _then;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BadGateWayCopyWith<$Res> implements $HttpErrorsCopyWith<$Res> {
  factory _$BadGateWayCopyWith(
          _BadGateWay value, $Res Function(_BadGateWay) then) =
      __$BadGateWayCopyWithImpl<$Res>;
  @override
  $Res call({String? exception});
}

/// @nodoc
class __$BadGateWayCopyWithImpl<$Res> extends _$HttpErrorsCopyWithImpl<$Res>
    implements _$BadGateWayCopyWith<$Res> {
  __$BadGateWayCopyWithImpl(
      _BadGateWay _value, $Res Function(_BadGateWay) _then)
      : super(_value, (v) => _then(v as _BadGateWay));

  @override
  _BadGateWay get _value => super._value as _BadGateWay;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_BadGateWay(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BadGateWay implements _BadGateWay {
  const _$_BadGateWay({this.exception});

  @override
  final String? exception;

  @override
  String toString() {
    return 'HttpErrors.badGateWay(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadGateWay &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$BadGateWayCopyWith<_BadGateWay> get copyWith =>
      __$BadGateWayCopyWithImpl<_BadGateWay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? exception) badGateWay,
    required TResult Function(String? exception) internalServiceError,
    required TResult Function(String? exception) removedResourceFound,
    required TResult Function(String? exception) resourceForbidden,
    required TResult Function(String? exception) resourceNotFound,
    required TResult Function(String? exception) resourceRemoved,
  }) {
    return badGateWay(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? exception)? badGateWay,
    TResult Function(String? exception)? internalServiceError,
    TResult Function(String? exception)? removedResourceFound,
    TResult Function(String? exception)? resourceForbidden,
    TResult Function(String? exception)? resourceNotFound,
    TResult Function(String? exception)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (badGateWay != null) {
      return badGateWay(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadGateWay value) badGateWay,
    required TResult Function(_InternalServiceError value) internalServiceError,
    required TResult Function(_RemovedResourceFound value) removedResourceFound,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_ResourceNotFound value) resourceNotFound,
    required TResult Function(_ResourceRemoved value) resourceRemoved,
  }) {
    return badGateWay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadGateWay value)? badGateWay,
    TResult Function(_InternalServiceError value)? internalServiceError,
    TResult Function(_RemovedResourceFound value)? removedResourceFound,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_ResourceNotFound value)? resourceNotFound,
    TResult Function(_ResourceRemoved value)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (badGateWay != null) {
      return badGateWay(this);
    }
    return orElse();
  }
}

abstract class _BadGateWay implements HttpErrors {
  const factory _BadGateWay({String? exception}) = _$_BadGateWay;

  @override
  String? get exception => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BadGateWayCopyWith<_BadGateWay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InternalServiceErrorCopyWith<$Res>
    implements $HttpErrorsCopyWith<$Res> {
  factory _$InternalServiceErrorCopyWith(_InternalServiceError value,
          $Res Function(_InternalServiceError) then) =
      __$InternalServiceErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? exception});
}

/// @nodoc
class __$InternalServiceErrorCopyWithImpl<$Res>
    extends _$HttpErrorsCopyWithImpl<$Res>
    implements _$InternalServiceErrorCopyWith<$Res> {
  __$InternalServiceErrorCopyWithImpl(
      _InternalServiceError _value, $Res Function(_InternalServiceError) _then)
      : super(_value, (v) => _then(v as _InternalServiceError));

  @override
  _InternalServiceError get _value => super._value as _InternalServiceError;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_InternalServiceError(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InternalServiceError implements _InternalServiceError {
  const _$_InternalServiceError({this.exception});

  @override
  final String? exception;

  @override
  String toString() {
    return 'HttpErrors.internalServiceError(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InternalServiceError &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$InternalServiceErrorCopyWith<_InternalServiceError> get copyWith =>
      __$InternalServiceErrorCopyWithImpl<_InternalServiceError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? exception) badGateWay,
    required TResult Function(String? exception) internalServiceError,
    required TResult Function(String? exception) removedResourceFound,
    required TResult Function(String? exception) resourceForbidden,
    required TResult Function(String? exception) resourceNotFound,
    required TResult Function(String? exception) resourceRemoved,
  }) {
    return internalServiceError(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? exception)? badGateWay,
    TResult Function(String? exception)? internalServiceError,
    TResult Function(String? exception)? removedResourceFound,
    TResult Function(String? exception)? resourceForbidden,
    TResult Function(String? exception)? resourceNotFound,
    TResult Function(String? exception)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (internalServiceError != null) {
      return internalServiceError(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadGateWay value) badGateWay,
    required TResult Function(_InternalServiceError value) internalServiceError,
    required TResult Function(_RemovedResourceFound value) removedResourceFound,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_ResourceNotFound value) resourceNotFound,
    required TResult Function(_ResourceRemoved value) resourceRemoved,
  }) {
    return internalServiceError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadGateWay value)? badGateWay,
    TResult Function(_InternalServiceError value)? internalServiceError,
    TResult Function(_RemovedResourceFound value)? removedResourceFound,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_ResourceNotFound value)? resourceNotFound,
    TResult Function(_ResourceRemoved value)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (internalServiceError != null) {
      return internalServiceError(this);
    }
    return orElse();
  }
}

abstract class _InternalServiceError implements HttpErrors {
  const factory _InternalServiceError({String? exception}) =
      _$_InternalServiceError;

  @override
  String? get exception => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InternalServiceErrorCopyWith<_InternalServiceError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovedResourceFoundCopyWith<$Res>
    implements $HttpErrorsCopyWith<$Res> {
  factory _$RemovedResourceFoundCopyWith(_RemovedResourceFound value,
          $Res Function(_RemovedResourceFound) then) =
      __$RemovedResourceFoundCopyWithImpl<$Res>;
  @override
  $Res call({String? exception});
}

/// @nodoc
class __$RemovedResourceFoundCopyWithImpl<$Res>
    extends _$HttpErrorsCopyWithImpl<$Res>
    implements _$RemovedResourceFoundCopyWith<$Res> {
  __$RemovedResourceFoundCopyWithImpl(
      _RemovedResourceFound _value, $Res Function(_RemovedResourceFound) _then)
      : super(_value, (v) => _then(v as _RemovedResourceFound));

  @override
  _RemovedResourceFound get _value => super._value as _RemovedResourceFound;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_RemovedResourceFound(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RemovedResourceFound implements _RemovedResourceFound {
  const _$_RemovedResourceFound({this.exception});

  @override
  final String? exception;

  @override
  String toString() {
    return 'HttpErrors.removedResourceFound(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemovedResourceFound &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$RemovedResourceFoundCopyWith<_RemovedResourceFound> get copyWith =>
      __$RemovedResourceFoundCopyWithImpl<_RemovedResourceFound>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? exception) badGateWay,
    required TResult Function(String? exception) internalServiceError,
    required TResult Function(String? exception) removedResourceFound,
    required TResult Function(String? exception) resourceForbidden,
    required TResult Function(String? exception) resourceNotFound,
    required TResult Function(String? exception) resourceRemoved,
  }) {
    return removedResourceFound(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? exception)? badGateWay,
    TResult Function(String? exception)? internalServiceError,
    TResult Function(String? exception)? removedResourceFound,
    TResult Function(String? exception)? resourceForbidden,
    TResult Function(String? exception)? resourceNotFound,
    TResult Function(String? exception)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (removedResourceFound != null) {
      return removedResourceFound(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadGateWay value) badGateWay,
    required TResult Function(_InternalServiceError value) internalServiceError,
    required TResult Function(_RemovedResourceFound value) removedResourceFound,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_ResourceNotFound value) resourceNotFound,
    required TResult Function(_ResourceRemoved value) resourceRemoved,
  }) {
    return removedResourceFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadGateWay value)? badGateWay,
    TResult Function(_InternalServiceError value)? internalServiceError,
    TResult Function(_RemovedResourceFound value)? removedResourceFound,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_ResourceNotFound value)? resourceNotFound,
    TResult Function(_ResourceRemoved value)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (removedResourceFound != null) {
      return removedResourceFound(this);
    }
    return orElse();
  }
}

abstract class _RemovedResourceFound implements HttpErrors {
  const factory _RemovedResourceFound({String? exception}) =
      _$_RemovedResourceFound;

  @override
  String? get exception => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RemovedResourceFoundCopyWith<_RemovedResourceFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResourceForbiddenCopyWith<$Res>
    implements $HttpErrorsCopyWith<$Res> {
  factory _$ResourceForbiddenCopyWith(
          _ResourceForbidden value, $Res Function(_ResourceForbidden) then) =
      __$ResourceForbiddenCopyWithImpl<$Res>;
  @override
  $Res call({String? exception});
}

/// @nodoc
class __$ResourceForbiddenCopyWithImpl<$Res>
    extends _$HttpErrorsCopyWithImpl<$Res>
    implements _$ResourceForbiddenCopyWith<$Res> {
  __$ResourceForbiddenCopyWithImpl(
      _ResourceForbidden _value, $Res Function(_ResourceForbidden) _then)
      : super(_value, (v) => _then(v as _ResourceForbidden));

  @override
  _ResourceForbidden get _value => super._value as _ResourceForbidden;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_ResourceForbidden(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ResourceForbidden implements _ResourceForbidden {
  const _$_ResourceForbidden({this.exception});

  @override
  final String? exception;

  @override
  String toString() {
    return 'HttpErrors.resourceForbidden(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResourceForbidden &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ResourceForbiddenCopyWith<_ResourceForbidden> get copyWith =>
      __$ResourceForbiddenCopyWithImpl<_ResourceForbidden>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? exception) badGateWay,
    required TResult Function(String? exception) internalServiceError,
    required TResult Function(String? exception) removedResourceFound,
    required TResult Function(String? exception) resourceForbidden,
    required TResult Function(String? exception) resourceNotFound,
    required TResult Function(String? exception) resourceRemoved,
  }) {
    return resourceForbidden(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? exception)? badGateWay,
    TResult Function(String? exception)? internalServiceError,
    TResult Function(String? exception)? removedResourceFound,
    TResult Function(String? exception)? resourceForbidden,
    TResult Function(String? exception)? resourceNotFound,
    TResult Function(String? exception)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (resourceForbidden != null) {
      return resourceForbidden(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadGateWay value) badGateWay,
    required TResult Function(_InternalServiceError value) internalServiceError,
    required TResult Function(_RemovedResourceFound value) removedResourceFound,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_ResourceNotFound value) resourceNotFound,
    required TResult Function(_ResourceRemoved value) resourceRemoved,
  }) {
    return resourceForbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadGateWay value)? badGateWay,
    TResult Function(_InternalServiceError value)? internalServiceError,
    TResult Function(_RemovedResourceFound value)? removedResourceFound,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_ResourceNotFound value)? resourceNotFound,
    TResult Function(_ResourceRemoved value)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (resourceForbidden != null) {
      return resourceForbidden(this);
    }
    return orElse();
  }
}

abstract class _ResourceForbidden implements HttpErrors {
  const factory _ResourceForbidden({String? exception}) = _$_ResourceForbidden;

  @override
  String? get exception => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResourceForbiddenCopyWith<_ResourceForbidden> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResourceNotFoundCopyWith<$Res>
    implements $HttpErrorsCopyWith<$Res> {
  factory _$ResourceNotFoundCopyWith(
          _ResourceNotFound value, $Res Function(_ResourceNotFound) then) =
      __$ResourceNotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String? exception});
}

/// @nodoc
class __$ResourceNotFoundCopyWithImpl<$Res>
    extends _$HttpErrorsCopyWithImpl<$Res>
    implements _$ResourceNotFoundCopyWith<$Res> {
  __$ResourceNotFoundCopyWithImpl(
      _ResourceNotFound _value, $Res Function(_ResourceNotFound) _then)
      : super(_value, (v) => _then(v as _ResourceNotFound));

  @override
  _ResourceNotFound get _value => super._value as _ResourceNotFound;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_ResourceNotFound(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ResourceNotFound implements _ResourceNotFound {
  const _$_ResourceNotFound({this.exception});

  @override
  final String? exception;

  @override
  String toString() {
    return 'HttpErrors.resourceNotFound(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResourceNotFound &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ResourceNotFoundCopyWith<_ResourceNotFound> get copyWith =>
      __$ResourceNotFoundCopyWithImpl<_ResourceNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? exception) badGateWay,
    required TResult Function(String? exception) internalServiceError,
    required TResult Function(String? exception) removedResourceFound,
    required TResult Function(String? exception) resourceForbidden,
    required TResult Function(String? exception) resourceNotFound,
    required TResult Function(String? exception) resourceRemoved,
  }) {
    return resourceNotFound(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? exception)? badGateWay,
    TResult Function(String? exception)? internalServiceError,
    TResult Function(String? exception)? removedResourceFound,
    TResult Function(String? exception)? resourceForbidden,
    TResult Function(String? exception)? resourceNotFound,
    TResult Function(String? exception)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadGateWay value) badGateWay,
    required TResult Function(_InternalServiceError value) internalServiceError,
    required TResult Function(_RemovedResourceFound value) removedResourceFound,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_ResourceNotFound value) resourceNotFound,
    required TResult Function(_ResourceRemoved value) resourceRemoved,
  }) {
    return resourceNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadGateWay value)? badGateWay,
    TResult Function(_InternalServiceError value)? internalServiceError,
    TResult Function(_RemovedResourceFound value)? removedResourceFound,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_ResourceNotFound value)? resourceNotFound,
    TResult Function(_ResourceRemoved value)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(this);
    }
    return orElse();
  }
}

abstract class _ResourceNotFound implements HttpErrors {
  const factory _ResourceNotFound({String? exception}) = _$_ResourceNotFound;

  @override
  String? get exception => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResourceNotFoundCopyWith<_ResourceNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResourceRemovedCopyWith<$Res>
    implements $HttpErrorsCopyWith<$Res> {
  factory _$ResourceRemovedCopyWith(
          _ResourceRemoved value, $Res Function(_ResourceRemoved) then) =
      __$ResourceRemovedCopyWithImpl<$Res>;
  @override
  $Res call({String? exception});
}

/// @nodoc
class __$ResourceRemovedCopyWithImpl<$Res>
    extends _$HttpErrorsCopyWithImpl<$Res>
    implements _$ResourceRemovedCopyWith<$Res> {
  __$ResourceRemovedCopyWithImpl(
      _ResourceRemoved _value, $Res Function(_ResourceRemoved) _then)
      : super(_value, (v) => _then(v as _ResourceRemoved));

  @override
  _ResourceRemoved get _value => super._value as _ResourceRemoved;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_ResourceRemoved(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ResourceRemoved implements _ResourceRemoved {
  const _$_ResourceRemoved({this.exception});

  @override
  final String? exception;

  @override
  String toString() {
    return 'HttpErrors.resourceRemoved(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResourceRemoved &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ResourceRemovedCopyWith<_ResourceRemoved> get copyWith =>
      __$ResourceRemovedCopyWithImpl<_ResourceRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? exception) badGateWay,
    required TResult Function(String? exception) internalServiceError,
    required TResult Function(String? exception) removedResourceFound,
    required TResult Function(String? exception) resourceForbidden,
    required TResult Function(String? exception) resourceNotFound,
    required TResult Function(String? exception) resourceRemoved,
  }) {
    return resourceRemoved(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? exception)? badGateWay,
    TResult Function(String? exception)? internalServiceError,
    TResult Function(String? exception)? removedResourceFound,
    TResult Function(String? exception)? resourceForbidden,
    TResult Function(String? exception)? resourceNotFound,
    TResult Function(String? exception)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (resourceRemoved != null) {
      return resourceRemoved(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadGateWay value) badGateWay,
    required TResult Function(_InternalServiceError value) internalServiceError,
    required TResult Function(_RemovedResourceFound value) removedResourceFound,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_ResourceNotFound value) resourceNotFound,
    required TResult Function(_ResourceRemoved value) resourceRemoved,
  }) {
    return resourceRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadGateWay value)? badGateWay,
    TResult Function(_InternalServiceError value)? internalServiceError,
    TResult Function(_RemovedResourceFound value)? removedResourceFound,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_ResourceNotFound value)? resourceNotFound,
    TResult Function(_ResourceRemoved value)? resourceRemoved,
    required TResult orElse(),
  }) {
    if (resourceRemoved != null) {
      return resourceRemoved(this);
    }
    return orElse();
  }
}

abstract class _ResourceRemoved implements HttpErrors {
  const factory _ResourceRemoved({String? exception}) = _$_ResourceRemoved;

  @override
  String? get exception => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResourceRemovedCopyWith<_ResourceRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}
