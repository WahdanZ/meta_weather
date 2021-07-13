// Flutter imports:
// Package imports:
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta_weather/base/di/injector.dart';

// Project imports:
import '../base_cubit.dart';
import '../base_state.dart';
import 'state_builder.dart';
import 'state_listener.dart';

typedef StateWidgetBuilder<T, C extends Cubit<BaseState<T>>> = Widget Function(
    BuildContext context, BaseState<T> state);
typedef StateWidgetListener<T, C extends Cubit<BaseState<T>>> = Widget Function(
    BuildContext context, BaseState<T> state);

class StateConsumer<T, C extends BaseCubit<T>>
    extends BlocConsumer<C, BaseState<T>> {
  StateConsumer({
    Key? key,
    C? cubit,
    required StateWidgetBuilder<T, C> builder,
    required StateWidgetListener<T, C> listener,
    BaseStateBuilderCondition? buildWhen,
    BaseStateListenerCondition? listenWhen,
  }) : super(
            key: key,
            bloc: cubit ?? inject<C>(),
            builder: builder,
            listener: listener,
            buildWhen: buildWhen,
            listenWhen: listenWhen);
}
