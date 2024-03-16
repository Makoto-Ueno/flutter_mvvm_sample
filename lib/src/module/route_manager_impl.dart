import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/src/module/interface/route_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_di/mini_di.dart';

@Injectable()
class RouteManagerImpl implements RouteManager {
  RouteManagerImpl({@Arg() required String initialLocation})
      : _stack = [initialLocation];

  final List<String> _stack;

  @override
  bool canPop(Object context) {
    throw UnimplementedError();
  }

  @override
  void go(covariant BuildContext context, String location, [Object? extra]) {
    context.go(location);
  }

  @override
  void goInitializeScreen(covariant BuildContext context) {}

  @override
  String get location => throw UnimplementedError();

  @override
  void pop(covariant BuildContext context) {
    context.pop();
  }

  @override
  void push(covariant BuildContext context, String location, [Object? extra]) {
    context.push(location);
  }

  @override
  List<String> get stack => throw UnimplementedError();
}

class CustomRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  CustomRouteObserver(RouteManager routeManager)
      : manager = routeManager as RouteManagerImpl;

  final RouteManagerImpl manager;

  /// iOSのスワイプバック、Androidのバックキーで画面を戻る時、[GoRouter]が勝手にpopするせいで
  /// [RouteManager]のpopが呼び出せないから、[didPop]でハンドリングする
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // Note: BottomSheet等のpopでスタックを消さない対応
    if (route.settings is! MaterialPage) return;

    if (previousRoute != null &&
        previousRoute is PageRoute &&
        manager._stack.length > 1) {
      manager._stack.removeLast();
    }
  }
}
