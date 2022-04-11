import 'dart:async';
import 'package:bloc_eazy/provider_manager.dart';
import 'bloc_coordinator.dart';
import 'bloc_state.dart';

abstract class Bloc {

  final BlocCoordinator coordinator = BlocCoordinator();

  //MARK: getters

  Stream<BlocState> get stream => coordinator.controller.stream;

  BlocState get state => coordinator.state;

  void setState(BlocState state) {
    coordinator.setState(state);
  }

  static T ofType<T extends Bloc>() {
    return ProviderManager.instance.read<T>();
  }
}
