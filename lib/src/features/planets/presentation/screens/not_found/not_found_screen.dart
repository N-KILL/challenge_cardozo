import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:challenge_cardozo/src/common_widgets/custom_button.dart';
import 'package:challenge_cardozo/src/config/router/app_router.dart';
import 'package:challenge_cardozo/src/config/theme/theme_provider.dart';

class NotFoundScreen extends ConsumerWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeNotifierProvider);
    final isDarkMode = themeMode == ThemeMode.dark;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.public,
              size: 250,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Icon(
                Icons.help,
                size: 60,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
        Text('Planet not found', style: TextStyle(fontSize: 24)),
        SizedBox(height: 20),
        CustomButton(
          label: 'Go to Planets',
          onPressed: () => ref.read(appRouterProvider).go('/planets'),
        ),
      ],
    );
  }
}
