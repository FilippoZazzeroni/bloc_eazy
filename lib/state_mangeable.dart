
import 'package:flutter/material.dart';
import 'bloc.dart';
import 'bloc_builder.dart';
import 'bloc_coordinator.dart';

mixin StateManageable {
  Widget blockBuilder<T extends Bloc>(Widget Function(BuildContext,AsyncSnapshot<BlocCoordinator>) builder) {
    return BlocBuilder<T>(builder: builder);
  }
}

