
import 'package:bloc_eazy/bloc.dart';
import 'package:bloc_eazy/bloc_intizializerable.dart';
import 'package:bloc_eazy/bloc_state.dart';
import 'package:bloc_eazy/state_mangeable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: View(),
  ));
}

class View extends StatefulWidget  {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> with BlocInizitalizerable, StateManageable {

  @override
  void initState() {
    initializer(bloc: Notifier());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: blockBuilder((context, snapshot) {
          if (kDebugMode) {
            print(snapshot.data?.state.rawValue);
          }
          return TextButton(
              onPressed: () {
                final bloc = Bloc.ofType<Notifier>();
                bloc.testNotifier();
              },
              child: const Text("ciaoo"));
        })
    );
  }
}

class Notifier extends Bloc {

  void testNotifier() {
    setState(NotifierState("rawValue"));
  }
}

class NotifierState extends BlocState {
  NotifierState(String rawValue) : super(rawValue);

  static const idle = "idle";
}
