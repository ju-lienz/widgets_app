import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});
  static const String name = 'theme_changer_screen';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            icon: isDarkMode
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
            onPressed: () {
              //todo: improve comments
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
            },
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// `watch` allows Riverpod to handle whether the widget should be
    /// redrawn or not. In these cases, it is not recommended to use `read`
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        Color color = colors[index];
        return RadioListTile(
          title: Text(
            'This color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          activeColor: color, // Color of the selected icon
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            // When the radio button is selected, update the selectedColorProvider's state
            // to the current index. This causes the selected color to change and triggers
            // a rebuild of the widget to reflect the new selection.
            ref.read(selectedColorProvider.notifier).state = index;
          },
        );
      },
    );
  }
}
