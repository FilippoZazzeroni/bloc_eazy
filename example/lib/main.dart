
import 'package:bloc_eazy/export.dart';
import 'package:example/ui/views/notifier_eazy_view.dart';
import 'package:flutter/material.dart';
import 'package:ui_mixins/export.dart';

import 'models/bloc_eazy_example/notifier_eazy.dart';

void main() {
  _setUpRoutes();
  BlocProvider().create(NotifierEazy(NotifierEazyState("initial_state", helperState: HelperState.initialState)));

  runApp(MaterialApp(
    routes: NavigableRouter.instance.routes,
    home: const NotifierEazyView(),
  ));
}

void _setUpRoutes() {
  NavigableRouter.instance.setRoutes({
    "/notifier_eazy": (context) => const NotifierEazyView()
  });
}




