
import 'package:flutter_bloc/flutter_bloc.dart';

class NotifierFlutterBloc extends Bloc<NotifierFlutterBlocState, String> {

  NotifierFlutterBloc(String initialState) : super(initialState) {
    on((event, emit) => emit("loaded"));
  }

}

abstract class NotifierFlutterBlocState {}

class PageLoaded extends NotifierFlutterBlocState {}

