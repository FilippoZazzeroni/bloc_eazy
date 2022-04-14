library bloc_eazy;

import 'package:bloc_eazy/bloc/bloc_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bloc.dart';


typedef BlocBuilderCreateFunction<S extends BlocState> = Widget Function(
    BuildContext, AsyncSnapshot<S>);

class BlocBuilder<T extends Bloc<S>, S extends BlocState>
    extends StatelessWidget {
  const BlocBuilder({Key? key, required this.builder}) : super(key: key);

  final BlocBuilderCreateFunction<S> builder;

  @override
  Widget build(BuildContext context) {
    final bloc = Bloc.ofType<T>();
    return StreamBuilder<S>(stream: bloc.stream, builder: builder, initialData: bloc.state);
  }
}
