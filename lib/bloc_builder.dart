
import 'package:bloc_eazy/bloc_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bloc.dart';


typedef BlocBuilderCreateFunction<S extends BlocState> = Widget Function(
    BuildContext, AsyncSnapshot<S>);

class BlocBuilder<T extends Bloc, S extends BlocState>
    extends StatelessWidget {
  const BlocBuilder({Key? key, required this.builder}) : super(key: key);

  final BlocBuilderCreateFunction<S> builder;

  @override
  Widget build(BuildContext context) {
    final bloc = Bloc.ofType<T>();
    final stream = bloc.stream.map((event) => event as S);
    return StreamBuilder<S>(stream: stream, builder: builder);
  }
}
