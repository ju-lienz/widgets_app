import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  // Name of the route for go_router config
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const Placeholder(),
    );
  }
}
