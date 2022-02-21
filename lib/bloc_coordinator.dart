
import 'dart:async';

import 'bloc_state.dart';

abstract class BlocCoordinator<State extends BlocState> {

  BlocCoordinator() {
    onControllerFirstListenCallback();
  }

  State getState();

  void setState(State state);

  abstract final State state;

  abstract final StreamController<BlocCoordinator> controller;

  void onControllerFirstListenCallback();
}
