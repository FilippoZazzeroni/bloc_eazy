import 'dart:async';
import 'package:bloc_eazy/provider_manager.dart';
import 'bloc_coordinator.dart';
import 'bloc_state.dart';

abstract class Bloc<T extends BlocState, C extends BlocCoordinator> {
  abstract final BlocCoordinator coordinator;

  //MARK: getters

  Stream<C> get stream;

  T get state;

  void setState(T state) {
    coordinator.setState(state);
  }

  static T ofType<T extends Bloc>() {
    return ProviderManager.instance.read<T>();
  }
}
