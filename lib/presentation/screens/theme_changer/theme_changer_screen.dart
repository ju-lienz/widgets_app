import 'package:flutter/material.dart';

class ThemeChangerScreen extends StatelessWidget {
  const ThemeChangerScreen({super.key});
  static const String name = 'theme_changer_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [],
      ),
    );
  }
}
