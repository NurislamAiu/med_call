import 'package:flutter_bloc/flutter_bloc.dart';

/// Базовый Cubit для всех фич, не требующих событий/состояний.
abstract class BaseCubit<State> extends Cubit<State> {
  BaseCubit(State initialState) : super(initialState);
}