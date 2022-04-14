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
