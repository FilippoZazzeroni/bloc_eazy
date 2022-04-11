
import 'dart:async';
import 'bloc_state.dart';

class BlocCoordinator {

  BlocCoordinator() {
    onControllerFirstListenCallback();
  }

  BlocState getState() {
    return state;
  }

  void setState(BlocState state) {
    this.state = state;
    controller.add(state);
  }

  BlocState state = BlocState("idle");

  StreamController<BlocState> controller = StreamController.broadcast();

  void onControllerFirstListenCallback() {
    controller.add(state);
  }
}
