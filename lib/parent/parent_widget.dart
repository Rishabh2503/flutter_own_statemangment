import 'package:flutter/material.dart';

abstract class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  ParentWidgetState createState() {
    return getState();
  }

  ParentWidgetState getState();
}

final ValueNotifier<int> counter = ValueNotifier<int>(0);

abstract class ParentWidgetState<T extends ParentWidget> extends State<T>
    with WidgetsBindingObserver {
  void incrementCounter() {
    counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return baseBuild(context);
  }

  baseBuild(BuildContext context) {}
}
