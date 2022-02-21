
import 'package:flutter/material.dart';

import 'bloc.dart';
import 'bloc_builder.dart';
import 'bloc_coordinator.dart';

mixin StateManageable {
  Widget blockBuilder<T extends Bloc, V extends BlocCoordinator>(Widget Function(BuildContext,AsyncSnapshot<BlocCoordinator>) builder) {
    return BlocBuilder<T ,V>(builder: builder);
  }
}

