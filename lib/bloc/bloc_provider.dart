library bloc_eazy;

import 'package:bloc_eazy/bloc/manager/provider_manager.dart';
import 'bloc.dart';

class BlocProvider<T extends Bloc> {
  void create(T bloc) {
    ProviderManager.instance.save(bloc);
  }
}
