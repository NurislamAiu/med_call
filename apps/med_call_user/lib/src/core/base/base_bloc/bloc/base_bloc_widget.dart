import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Базовый виджет для удобной работы с BLoC.
class BaseBlocWidget<B extends BlocBase<S>, S> extends StatelessWidget {
  final Widget Function(BuildContext context, S state) builder;

  const BaseBlocWidget({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: builder,
    );
  }
}