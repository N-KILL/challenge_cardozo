import 'package:challenge_cardozo/src/common_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

/// A base scaffold widget that provides a custom layout for the app.
/// It takes a [navigationShell] widget that will be displayed as the main
/// content.
class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.navigationShell});

  final Widget navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const CustomAppBar(), body: navigationShell);
  }
}
