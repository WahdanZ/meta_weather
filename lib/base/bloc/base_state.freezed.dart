// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BaseStateTearOff {
  const _$BaseStateTearOff();

  BaseResultState<T> call<T>({T? result}) {
    return BaseResultState<T>(
      result: result,
    );
  }

  FailureState<T> failure<T>(dynamic error) {
    return FailureState<T>(
      error,
    );
  }

  InitialState<T> initial<T>() {
    return InitialState<T>();
  }

  LoadingState<T> loading<T>() {
    return LoadingState<T>();
  }

  NoDataState<T> noData<T>() {
    return NoDataState<T>();
  }

  OfflineState<T> offline<T>() {
    return OfflineState<T>();
  }
}

/// @nodoc
const $BaseState = _$BaseStateTearOff();

/// @nodoc
mixin _$BaseState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? result) $default, {
    required TResult Function(dynamic error) failure,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? result)? $default, {
    TResult Function(dynamic error)? failure,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseResultState<T> value) $default, {
    required TResult Function(FailureState<T> value) failure,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(NoDataState<T> value) noData,
    required TResult Function(OfflineState<T> value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseResultState<T> value)? $default, {
    TResult Function(FailureState<T> value)? failure,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(NoDataState<T> value)? noData,
    TResult Function(OfflineState<T> value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<T, $Res> {
  factory $BaseStateCopyWith(
          BaseState<T> value, $Res Function(BaseState<T>) then) =
      _$BaseStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$BaseStateCopyWithImpl<T, $Res> implements $BaseStateCopyWith<T, $Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  final BaseState<T> _value;
  // ignore: unused_field
  final $Res Function(BaseState<T>) _then;
}

/// @nodoc
abstract class $BaseResultStateCopyWith<T, $Res> {
  factory $BaseResultStateCopyWith(
          BaseResultState<T> value, $Res Function(BaseResultState<T>) then) =
      _$BaseResultStateCopyWithImpl<T, $Res>;
  $Res call({T? result});
}

/// @nodoc
class _$BaseResultStateCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements $BaseResultStateCopyWith<T, $Res> {
  _$BaseResultStateCopyWithImpl(
      BaseResultState<T> _value, $Res Function(BaseResultState<T>) _then)
      : super(_value, (v) => _then(v as BaseResultState<T>));

  @override
  BaseResultState<T> get _value => super._value as BaseResultState<T>;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(BaseResultState<T>(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$BaseResultState<T> implements BaseResultState<T> {
  const _$BaseResultState({this.result});

  @override
  final T? result;

  @override
  String toString() {
    return 'BaseState<$T>(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseResultState<T> &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $BaseResultStateCopyWith<T, BaseResultState<T>> get copyWith =>
      _$BaseResultStateCopyWithImpl<T, BaseResultState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? result) $default, {
    required TResult Function(dynamic error) failure,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() offline,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? result)? $default, {
    TResult Function(dynamic error)? failure,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseResultState<T> value) $default, {
    required TResult Function(FailureState<T> value) failure,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(NoDataState<T> value) noData,
    required TResult Function(OfflineState<T> value) offline,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseResultState<T> value)? $default, {
    TResult Function(FailureState<T> value)? failure,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(NoDataState<T> value)? noData,
    TResult Function(OfflineState<T> value)? offline,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class BaseResultState<T> implements BaseState<T> {
  const factory BaseResultState({T? result}) = _$BaseResultState<T>;

  T? get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResultStateCopyWith<T, BaseResultState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureStateCopyWith<T, $Res> {
  factory $FailureStateCopyWith(
          FailureState<T> value, $Res Function(FailureState<T>) then) =
      _$FailureStateCopyWithImpl<T, $Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$FailureStateCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements $FailureStateCopyWith<T, $Res> {
  _$FailureStateCopyWithImpl(
      FailureState<T> _value, $Res Function(FailureState<T>) _then)
      : super(_value, (v) => _then(v as FailureState<T>));

  @override
  FailureState<T> get _value => super._value as FailureState<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(FailureState<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FailureState<T> implements FailureState<T> {
  const _$FailureState(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'BaseState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureState<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $FailureStateCopyWith<T, FailureState<T>> get copyWith =>
      _$FailureStateCopyWithImpl<T, FailureState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? result) $default, {
    required TResult Function(dynamic error) failure,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() offline,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? result)? $default, {
    TResult Function(dynamic error)? failure,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseResultState<T> value) $default, {
    required TResult Function(FailureState<T> value) failure,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(NoDataState<T> value) noData,
    required TResult Function(OfflineState<T> value) offline,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseResultState<T> value)? $default, {
    TResult Function(FailureState<T> value)? failure,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(NoDataState<T> value)? noData,
    TResult Function(OfflineState<T> value)? offline,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureState<T> implements BaseState<T> {
  const factory FailureState(dynamic error) = _$FailureState<T>;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureStateCopyWith<T, FailureState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialStateCopyWith<T, $Res> {
  factory $InitialStateCopyWith(
          InitialState<T> value, $Res Function(InitialState<T>) then) =
      _$InitialStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InitialStateCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements $InitialStateCopyWith<T, $Res> {
  _$InitialStateCopyWithImpl(
      InitialState<T> _value, $Res Function(InitialState<T>) _then)
      : super(_value, (v) => _then(v as InitialState<T>));

  @override
  InitialState<T> get _value => super._value as InitialState<T>;
}

/// @nodoc

class _$InitialState<T> implements InitialState<T> {
  const _$InitialState();

  @override
  String toString() {
    return 'BaseState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? result) $default, {
    required TResult Function(dynamic error) failure,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() offline,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? result)? $default, {
    TResult Function(dynamic error)? failure,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseResultState<T> value) $default, {
    required TResult Function(FailureState<T> value) failure,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(NoDataState<T> value) noData,
    required TResult Function(OfflineState<T> value) offline,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseResultState<T> value)? $default, {
    TResult Function(FailureState<T> value)? failure,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(NoDataState<T> value)? noData,
    TResult Function(OfflineState<T> value)? offline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState<T> implements BaseState<T> {
  const factory InitialState() = _$InitialState<T>;
}

/// @nodoc
abstract class $LoadingStateCopyWith<T, $Res> {
  factory $LoadingStateCopyWith(
          LoadingState<T> value, $Res Function(LoadingState<T>) then) =
      _$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements $LoadingStateCopyWith<T, $Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState<T> _value, $Res Function(LoadingState<T>) _then)
      : super(_value, (v) => _then(v as LoadingState<T>));

  @override
  LoadingState<T> get _value => super._value as LoadingState<T>;
}

/// @nodoc

class _$LoadingState<T> implements LoadingState<T> {
  const _$LoadingState();

  @override
  String toString() {
    return 'BaseState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? result) $default, {
    required TResult Function(dynamic error) failure,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() offline,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? result)? $default, {
    TResult Function(dynamic error)? failure,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseResultState<T> value) $default, {
    required TResult Function(FailureState<T> value) failure,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(NoDataState<T> value) noData,
    required TResult Function(OfflineState<T> value) offline,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseResultState<T> value)? $default, {
    TResult Function(FailureState<T> value)? failure,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(NoDataState<T> value)? noData,
    TResult Function(OfflineState<T> value)? offline,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements BaseState<T> {
  const factory LoadingState() = _$LoadingState<T>;
}

/// @nodoc
abstract class $NoDataStateCopyWith<T, $Res> {
  factory $NoDataStateCopyWith(
          NoDataState<T> value, $Res Function(NoDataState<T>) then) =
      _$NoDataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NoDataStateCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements $NoDataStateCopyWith<T, $Res> {
  _$NoDataStateCopyWithImpl(
      NoDataState<T> _value, $Res Function(NoDataState<T>) _then)
      : super(_value, (v) => _then(v as NoDataState<T>));

  @override
  NoDataState<T> get _value => super._value as NoDataState<T>;
}

/// @nodoc

class _$NoDataState<T> implements NoDataState<T> {
  const _$NoDataState();

  @override
  String toString() {
    return 'BaseState<$T>.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoDataState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? result) $default, {
    required TResult Function(dynamic error) failure,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() offline,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? result)? $default, {
    TResult Function(dynamic error)? failure,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseResultState<T> value) $default, {
    required TResult Function(FailureState<T> value) failure,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(NoDataState<T> value) noData,
    required TResult Function(OfflineState<T> value) offline,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseResultState<T> value)? $default, {
    TResult Function(FailureState<T> value)? failure,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(NoDataState<T> value)? noData,
    TResult Function(OfflineState<T> value)? offline,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoDataState<T> implements BaseState<T> {
  const factory NoDataState() = _$NoDataState<T>;
}

/// @nodoc
abstract class $OfflineStateCopyWith<T, $Res> {
  factory $OfflineStateCopyWith(
          OfflineState<T> value, $Res Function(OfflineState<T>) then) =
      _$OfflineStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$OfflineStateCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements $OfflineStateCopyWith<T, $Res> {
  _$OfflineStateCopyWithImpl(
      OfflineState<T> _value, $Res Function(OfflineState<T>) _then)
      : super(_value, (v) => _then(v as OfflineState<T>));

  @override
  OfflineState<T> get _value => super._value as OfflineState<T>;
}

/// @nodoc

class _$OfflineState<T> implements OfflineState<T> {
  const _$OfflineState();

  @override
  String toString() {
    return 'BaseState<$T>.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OfflineState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? result) $default, {
    required TResult Function(dynamic error) failure,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() offline,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? result)? $default, {
    TResult Function(dynamic error)? failure,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseResultState<T> value) $default, {
    required TResult Function(FailureState<T> value) failure,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(NoDataState<T> value) noData,
    required TResult Function(OfflineState<T> value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseResultState<T> value)? $default, {
    TResult Function(FailureState<T> value)? failure,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(NoDataState<T> value)? noData,
    TResult Function(OfflineState<T> value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class OfflineState<T> implements BaseState<T> {
  const factory OfflineState() = _$OfflineState<T>;
}
