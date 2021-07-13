// Flutter imports:
import 'package:flutter/widgets.dart';
// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta_weather/base/bloc/widgets/state_builder.dart';
import 'package:meta_weather/base/di/injector.dart';

// Project imports:
import '../base_cubit.dart';
import '../base_state.dart';

/// Builder function for the the initial state.
typedef InitialBuilder = void Function(BuildContext context);

/// Builder function for the data loading state.
typedef LoadingBuilder = void Function(BuildContext context);

/// Builder function for a success state. The data was fetched and nonnull
/// element was returned.
typedef DataBuilder<T> = void Function(BuildContext context, T data);

/// Callback function for no result. The data was fetched
/// successfully, but a null element was returned.
typedef NoDataBuilder = void Function(BuildContext context);

/// Callback function when no internet connection
typedef OfflineBuilder = void Function(BuildContext context);

/// Callback function for an error. It contains an [error] that has caused
/// which may allow a view to react differently on different errors.
typedef ErrorBuilder = void Function(
  BuildContext context,
  dynamic error,
);

/// Signature for the [buildWhen] function which takes the previous [BaseState]
/// and the current [BaseState] and returns a [bool] which determines whether
/// to rebuild the `view` with the current `state`.
typedef BaseStateListenerCondition = bool Function(
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
class StateListener<T, C extends BaseCubit<T>>
    extends BlocListener<C, BaseState<T>> {
  StateListener({
    Key? key,
    C? cubit,
    InitialBuilder? onReady,
    LoadingBuilder? onLoading,
    DataBuilder<T>? onData,
    NoDataBuilder? onNoData,
    OfflineBuilder? onOffline,
    ErrorBuilder? onError,
    BaseStateListenerCondition? listenWhen,
    Widget? child,
  }) : super(
          key: key,
          bloc: cubit ?? inject<C>(),
          listenWhen: listenWhen,
          listener: (context, state) {
            state.when((result) => onData?.call(context, result!),
                initial: () => onReady?.call(context),
                loading: () => onLoading?.call(context),
                noData: () => onNoData?.call(context),
                failure: (error) => onError?.call(context, error),
                offline: () => onOffline?.call(context));
          },
          child: child,
        );
}
