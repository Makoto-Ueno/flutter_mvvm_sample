import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/src/screen/initialize_screen.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<InitializeRoute>(path: InitializeRoute.path)
class InitializeRoute extends _RouteBase {
  const InitializeRoute();
  static const path = '/initialize';

  @override
  Widget buildScreen(BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: InitializeScreen(),
    );
  }
}

abstract class _RouteBase extends GoRouteData {
  const _RouteBase();

  bool get noAnimation => true;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final child = buildScreen(context, state);

    return noAnimation
        ? NoTransitionPage(child: child)
        : MaterialPage(child: child);
  }

  Widget buildScreen(BuildContext context, GoRouterState state);
}
