import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:challenge_cardozo/src/common_widgets/custom_button.dart';
import 'package:challenge_cardozo/src/config/router/app_router.dart';

/// A simple home screen that displays a greeting and a button to navigate to the
/// planets screen.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Welcome to the Planet Visualizer!'),
        SizedBox(height: 20),
        CustomButton(
          label: 'Go to Planets',
          onPressed: () => ref.read(appRouterProvider).go('/planets'),
        ),
      ],
    );
  }
}
