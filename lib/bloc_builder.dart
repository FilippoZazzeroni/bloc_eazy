
import 'package:bloc_eazy/bloc_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bloc.dart';
import 'bloc_coordinator.dart';


typedef BlocBuilderCreateFunction = Widget Function(
    BuildContext, AsyncSnapshot<BlocState>);

class BlocBuilder<T extends Bloc, S extends BlocState>
    extends StatelessWidget {
  const BlocBuilder({Key? key, required this.builder}) : super(key: key);

  final BlocBuilderCreateFunction builder;

  @override
  Widget build(BuildContext context) {
    final bloc = Bloc.ofType<T>();
    return StreamBuilder<S>(stream: bloc.stream as Stream<S>, builder: builder);
  }
}
