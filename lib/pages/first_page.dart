import 'package:flutter/material.dart';
import 'package:statemanager/pages/second_page.dart';
import 'package:statemanager/parent/parent_widget.dart';

class FirstPage extends ParentWidget {
  const FirstPage({super.key});

  @override
  ParentWidgetState<ParentWidget> getState() {
    return _FirstPageState();
  }
}

class _FirstPageState extends ParentWidgetState<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SecondPage())),
              icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              valueListenable: counter,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
