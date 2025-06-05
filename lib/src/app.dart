import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:challenge_cardozo/src/config/config.dart';
import 'package:challenge_cardozo/src/config/theme/theme_data.dart';
import 'package:challenge_cardozo/src/config/theme/theme_provider.dart';

/// The main entry point of the application.
/// It sets the preferred orientations and initializes the MaterialApp with the
/// router and localization support.
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Force the app to run in portrait mode only
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    final appRouter = ref.watch(appRouterProvider);
    final themeMode = ref.watch(
      themeModeNotifierProvider,
    );

    return MaterialApp.router(
      routerConfig: appRouter,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
    );
  }
}
