// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_mvvm_sample/src/module/interface/route_manager.dart'
    as _i2;
import 'package:flutter_mvvm_sample/src/module/route_manager_imple.dart' as _i3;
import 'package:mini_di/mini_di.dart' as _i1;

void resolveInjectable(
  _i1.Container container, {
  required RouteManagerArgs routeManagerArgs,
}) {
  container.register(_i1.Factory<_i2.RouteManager>(
    cache: true,
    (r) =>
        _i3.RouteManagerImpl(initialLocation: routeManagerArgs.initialLocation),
  ));
}

class RouteManagerArgs {
  const RouteManagerArgs({required this.initialLocation});

  final String initialLocation;
}
