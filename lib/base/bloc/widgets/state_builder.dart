// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta_weather/base/di/injector.dart';

// Project imports:
import '../base_cubit.dart';
import '../base_state.dart';

/// Builder function for the the initial state.
typedef InitialBuilder = Widget Function(BuildContext context);

/// Builder function for the data loading state.
typedef LoadingBuilder = Widget Function(BuildContext context);

/// Builder function for a success state. The data was fetched and nonnull
/// element was returned.
typedef DataBuilder<T> = Widget Function(BuildContext context, T data);

/// Builder function for no result. The data was fetched
/// successfully, but a null element was returned.
typedef NoDataBuilder = Widget Function(BuildContext context);

/// Builder function when no internet connection
typedef OfflineBuilder = Widget Function(BuildContext context);

/// Builder function for an error. It contains an [error] that has caused
/// which may allow a view to react differently on different errors.
typedef ErrorBuilder = Widget Function(
  BuildContext context,
  dynamic error,
);

/// Signature for the [buildWhen] function which takes the previous [ViewState]
/// and the current [ViewState] and returns a [bool] which determines whether
/// to rebuild the `view` with the current `state`.
typedef BaseStateBuilderCondition = bool Function(
  BaseState previous,
  BaseState current,
);

/// [StateBuilder] is responsible for building the UI based on the [ViewState].
/// It's a wrapper over the [BlocBuilder] widget so it accepts a [bloc] object
/// and
/// a set of handy callbacks, which corresponds to each possible state:
/// [onReady] builder for the the initial state,
/// [onLoading] builder for the data loading state,
/// [onData] builder for the data success state,
/// [onNoData] builder for for no result state,
/// [onOffline] builder for for no internet connection state,
/// [onError] builder function for an error state.
///
/// [T] - the type of elements,
/// [C] - the type of cubit.
class StateBuilder<T, C extends BaseCubit<T>>
    extends BlocBuilder<C, BaseState<T>> {
  StateBuilder({
    Key? key,
    C? cubit,
    InitialBuilder? onReady,
    LoadingBuilder? onLoading,
    DataBuilder<T>? onData,
    NoDataBuilder? onNoData,
    OfflineBuilder? onOffline,
    ErrorBuilder? onError,
    BaseStateBuilderCondition? buildWhen,
  }) : super(
          key: key,
          bloc: cubit ?? inject<C>(),
          buildWhen: buildWhen,
          builder: (context, state) {
            return state.when(
                (result) =>
                    onData?.call(context, result!) ?? const SizedBox.shrink(),
                initial: () =>
                    onReady?.call(context) ?? const SizedBox.shrink(),
                loading: () =>
                    onLoading?.call(context) ??
                    const Center(child: CircularProgressIndicator()),
                noData: () =>
                    onNoData?.call(context) ?? const SizedBox.shrink(),
                failure: (error) =>
                    onError?.call(context, error) ?? const SizedBox.shrink(),
                offline: () =>
                    onOffline?.call(context) ?? const SizedBox.shrink());
          },
        );
}
