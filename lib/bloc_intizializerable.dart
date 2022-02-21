
import 'bloc.dart';
import 'bloc_provider.dart';

mixin BlocInizitalizerable {
  void initializer({required Bloc bloc}) {
    BlocProvider().create(bloc);
  }
}