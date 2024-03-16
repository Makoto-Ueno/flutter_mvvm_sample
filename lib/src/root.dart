import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/src/route/router_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Root extends HookConsumerWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.read(routerConfigProvider);

    return MaterialApp.router(
      routerConfig: routerConfig,
    );
  }
}
