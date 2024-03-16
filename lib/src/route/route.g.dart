// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $initializeRoute,
    ];

RouteBase get $initializeRoute => GoRouteData.$route(
      path: '/initialize',
      factory: $InitializeRouteExtension._fromState,
    );

extension $InitializeRouteExtension on InitializeRoute {
  static InitializeRoute _fromState(GoRouterState state) =>
      const InitializeRoute();

  String get location => GoRouteData.$location(
        '/initialize',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
