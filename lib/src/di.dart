import 'package:flutter_mvvm_sample/src/resolve.g.dart';
import 'package:flutter_mvvm_sample/src/route/route.dart';
import 'package:mini_di/mini_di.dart';

Future<Resolver> createResolver() async {
  final container = Container();

  resolveInjectable(container,
      routeManagerArgs:
          const RouteManagerArgs(initialLocation: InitializeRoute.path));
  return container;
}
