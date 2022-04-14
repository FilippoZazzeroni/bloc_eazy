import 'package:bloc_eazy/export.dart';

class NotifierEazy extends Bloc<NotifierEazyState> {

  NotifierEazy(NotifierEazyState initialState) : super(initialState);

  void testNotifier() {
    setState(NotifierEazyState("state1", helperState: HelperState.state1));
  }
}

class NotifierEazyState extends BlocState {
  NotifierEazyState(String rawValue, {required this.helperState}) : super(rawValue);

  final HelperState helperState;
}

enum HelperState {
  initialState,
  state1,
  state2
}