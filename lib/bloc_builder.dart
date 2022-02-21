import 'dart:async';
import 'package:bloc_eazy/provider_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bloc.dart';
import 'bloc_coordinator.dart';
import 'bloc_state.dart';

typedef BlocBuilderCreateFunction = Widget Function(
    BuildContext, AsyncSnapshot<BlocCoordinator>);

class BlocBuilder<T extends Bloc, TState extends BlocCoordinator<BlocState>>
    extends StatelessWidget {
  const BlocBuilder({Key? key, required this.builder}) : super(key: key);

  final BlocBuilderCreateFunction builder;

  @override
  Widget build(BuildContext context) {
    final bloc = Bloc.ofType<T>();
    return StreamBuilder<BlocCoordinator>(stream: bloc.stream, builder: builder);
  }
}
