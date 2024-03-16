import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/src/di.dart';
import 'package:flutter_mvvm_sample/src/root.dart';
import 'package:flutter_mvvm_sample/src/view_model/resolver.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_di/mini_di.dart';

void main() async {
  late final Resolver resolver;

  resolver = await createResolver();

  runApp(
    ProviderScope(
      overrides: [
        resolverProvider.overrideWithValue(resolver),
      ],
      child: const Root(),
    ),
  );
}
