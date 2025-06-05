import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

/// A notifier that manages the theme mode of the application.
/// It allows toggling between light and dark modes.
@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() => ThemeMode.light;

  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}
