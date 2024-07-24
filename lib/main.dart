import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

/// The `ProviderScope` must be at the beginning of the application to ensure that all providers
/// are available to all parts of the app. It provides a global context for state management.
void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    /* final isDarkMode = ref.watch(isDarkModeProvider);
    final int selectedColor = ref.watch(selectedColorProvider); */
    return MaterialApp.router(
      title: 'Flutter widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      // Apply the theme defined in AppTheme class
      theme: appTheme.getTheme(),
    );
  }
}
