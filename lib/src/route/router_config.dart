import 'package:flutter_mvvm_sample/src/module/route_manager_imple.dart';
import 'package:flutter_mvvm_sample/src/route/route.dart';
import 'package:flutter_mvvm_sample/src/view_model/resolver.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../module/interface/route_manager.dart';

part 'router_config.g.dart';

@Riverpod(keepAlive: true)
GoRouter routerConfig(RouterConfigRef ref) {
  final routeManager = ref.$resolver.resolve<RouteManager>();
  return GoRouter(
    initialLocation: InitializeRoute.path,
    routes: [
      ShellRoute(
        navigatorKey: rootNavigatorKey,
        routes: [
          ...$appRoutes,
        ],
        builder: (context, state, child) {
          return child;
        },
      ),
    ],
    observers: [CustomRouteObserver(routeManager)],
  );
}
