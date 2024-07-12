import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';

/// A `ConsumerWidget` widget that aims to access a builder and obtain the values
/// I need from my provider.
///
/// It provides a `WidgetRef ref` reference in the `build` method. It's a way to
/// notify Riverpod that a reference to a provider will be used, which we will specify later.
class CounterScreen extends ConsumerWidget {
  // Name of the route for go_router config
  static const String name = 'counter';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// The current value of the counter, retrieved from the `counterProvider`.
    /// The `Watch` method allows you to listen for changes in state.
    final int clickCounter = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Riverpod"),
      ),
      body: Center(
        child: Text(
          "Valor:$clickCounter",
          style: const TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
