import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../config/theme/theme_provider.dart'; // Asegúrate de que la ruta sea correcta

/// A custom AppBar widget that provides a consistent look and feel across the
/// app.
///
/// It includes a home button that navigates to the home route.
class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeNotifierProvider);
    final isDark = themeMode == ThemeMode.dark;

    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.home, color: Colors.white),
        onPressed: () {
          context.go('/home');
        },
      ),
      title: const Text(
        'PLANET VISUALIZER',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            isDark ? Icons.light_mode : Icons.dark_mode,
            color: Colors.white,
          ),
          tooltip: isDark ? 'Switch to light mode' : 'Switch to dark mode',
          onPressed: () {
            ref.read(themeModeNotifierProvider.notifier).toggleTheme();
          },
        ),
      ],
    );
  }
}
