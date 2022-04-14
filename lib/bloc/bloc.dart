library bloc_eazy;

import 'bloc_coordinator.dart';
import 'bloc_state.dart';
import 'manager/provider_manager.dart';


abstract class Bloc<S extends BlocState> {

  Bloc(this._initialState);

  final S _initialState;

  late final BlocCoordinator<S> _coordinator = BlocCoordinator(_initialState);

  //MARK: getters

  Stream<S> get stream => _coordinator.controller.stream;

  S get state => _coordinator.state;

  void setState(S state) {
    _coordinator.setState(state);
  }

  static T ofType<T extends Bloc>() {
    return ProviderManager.instance.read<T>();
  }
}
