
## Usage

The flow of usage is very simple and straightforward and can be divided in four steps in order to get a Bloc working correctly:

1) Define the Bloc class and its State:

```
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
```
Additionally you can add an helper state enum or whatever variable is needed to add enhance the content of the state. 

2) Register the Bloc class with BlocProvider and pass an initial state to the Bloc class

```
void main() {
  
  BlocProvider().create(NotifierEazy(NotifierEazyState("initial_state", helperState: HelperState.initialState)));

  runApp(MaterialApp(
    routes: NavigableRouter.instance.routes,
    home: const NotifierEazyView(),
  ));
}
```

3) To access The Bloc state in a Widget scope use the BlocBuilder widget that works like a StreamBuilder that streams the state of the Bloc

```
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bloc_eazy/export.dart';
import 'package:ui_mixins/export.dart';
import '../../models/bloc_eazy_example/notifier_eazy.dart';

class NotifierEazyView extends StatelessWidget with Navigable {
  const NotifierEazyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        BlocBuilder<NotifierEazy, NotifierEazyState>(builder: (context, snapshot) {
      if (kDebugMode) {
        print(snapshot.data?.rawValue);
      }
      return Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  pushNamedRoute(context, route: "/notifier_eazy");
                },
                child: const Text("Go to Notifier eazy view")),
            TextButton(
                onPressed: () {
                  final bloc = Bloc.ofType<NotifierEazy>();
                  bloc.testNotifier();
                },
                child: const Text("Rebuild Notifier eazy view")),
          ],
        ),
      );
    }));
  }
}
```

4) To access the Bloc and set is state use the following helper function:

```
final bloc = Bloc.ofType<NotifierEazy>();
bloc.testNotifier();
```