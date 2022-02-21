import 'package:bloc_eazy/provider_manager.dart';

import 'bloc.dart';

class BlocProvider<T extends Bloc> {
  void create(T bloc) {
    ProviderManager.instance.save(bloc);
  }
}
