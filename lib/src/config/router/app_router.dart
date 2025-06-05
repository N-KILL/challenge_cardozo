import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:challenge_cardozo/src/common_widgets/custom_scaffold.dart';
import 'package:challenge_cardozo/src/features/home/presentation/screens.dart';
import 'package:challenge_cardozo/src/features/planets/presentation/screens.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

/// The main router for the application.
/// It defines the routes and navigation structure of the app.
@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return CustomScaffold(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeScreen(),
              ),
              GoRoute(
                path: '/planets',
                builder: (context, state) => const PlanetsScreen(),
                routes: [
                  GoRoute(
                    path: ':planet',
                    builder: (context, state) {
                      final planet = state.pathParameters['planet']!;
                      return PlanetDetailsScreen(planetName: planet);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: '/not-found',
                builder: (context, state) {
                  return const NotFoundScreen();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
