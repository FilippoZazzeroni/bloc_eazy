

import 'bloc.dart';

class ProviderManager {

  ProviderManager._internal();

  static final instance = ProviderManager._internal();

  final _providers = [];

  void save<T extends Bloc>(T provider) {
    _providers.add(provider);
  }

  T read<T extends Bloc>() {
    return _providers.whereType<T>().first;
  }

}