import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

/// Bolean value
final isDarkModeProvider = StateProvider<bool>((ref) => false);

/// List of immutable themes
/// Provider type: `Provider`
final colorListProvider = Provider((ref) => colorList);

/// List of <int> items for selected color on theme. Keeps an state.
final selectedColorProvider = StateProvider<int>((ref) => 0);

/// A custom AppTheme object. This type of provider can be used when the state
/// is more complex.
///
/// What information will this provider handle?
/// StateNotifierProvider<1, 2>
///
/// 1: The class name that will manage the state.
/// 2: The type of state we will have.
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

/// Controller or notifier for the theme state.
/// The state to be maintained is an instance of the AppTheme class.
class ThemeNotifier extends StateNotifier<AppTheme> {
  /// Creates the initial instance of AppTheme with default values,
  /// accessible via `state`.
  ThemeNotifier() : super(AppTheme());
}
