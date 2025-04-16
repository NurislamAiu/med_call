import 'package:flutter_bloc/flutter_bloc.dart';

/// Базовое событие для использования в наследниках BLoC
abstract class BaseEvent {}

/// Базовое состояние для использования в наследниках BLoC
abstract class BaseState {}

/// Базовый BLoC, от которого наследуются все фичевые BLoC-и.
abstract class BaseBloc<E extends BaseEvent, S extends BaseState> extends Bloc<E, S> {
  BaseBloc(S initialState) : super(initialState);
}