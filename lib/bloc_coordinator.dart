
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
    controller.add(this);
  }

  BlocState state = BlocState("idle");

  StreamController<BlocCoordinator> controller = StreamController.broadcast();

  void onControllerFirstListenCallback() {
    controller.add(this);
  }
}
