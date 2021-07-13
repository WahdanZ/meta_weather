// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
class BaseState<T> with _$BaseState<T> {
  const factory BaseState({T? result}) = BaseResultState<T>;

  const factory BaseState.failure(dynamic error) = FailureState;

  const factory BaseState.initial() = InitialState;

  const factory BaseState.loading() = LoadingState;

  const factory BaseState.noData() = NoDataState;

  const factory BaseState.offline() = OfflineState;
}
