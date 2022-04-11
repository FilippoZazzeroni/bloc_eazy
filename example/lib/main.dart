
import 'package:bloc_eazy/export.dart';
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

class _ViewState extends State<View> with BlocInizitalizerable{

  @override
  void initState() {
    initializer(bloc: Notifier());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<Notifier, NotifierState>(builder: (context, snapshot) {
          if (kDebugMode) {
            print(snapshot.data?.rawValue);
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
