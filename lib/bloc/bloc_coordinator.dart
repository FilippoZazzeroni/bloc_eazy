
import 'dart:async';
import 'bloc_state.dart';

class BlocCoordinator<T extends BlocState> {

  BlocCoordinator(T initialState) {
    state = initialState;
    onControllerFirstListenCallback();
  }

  T getState() {
    return state;
  }

  void setState(T state) {
    this.state = state;
    controller.add(state);
  }

  late T state;

  StreamController<T> controller = StreamController.broadcast();

  void onControllerFirstListenCallback() {
    controller.add(state);
  }
}
