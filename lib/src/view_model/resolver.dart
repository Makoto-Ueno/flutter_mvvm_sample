// ignore_for_file: invalid_use_of_internal_member, invalid_use_of_protected_member, depend_on_referenced_packages, implementation_imports

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_di/mini_di.dart' show Resolver;
import 'package:riverpod/src/async_notifier.dart';
import 'package:riverpod/src/notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resolver.g.dart';

@Riverpod(keepAlive: true)
Resolver resolver(ResolverRef ref) {
  throw UnimplementedError();
}

extension NotifierResolverExtension<T> on NotifierBase<T> {
  Resolver get $resolver => ref.read(resolverProvider);
}

extension AsyncNotifierResolverExtension<T> on AsyncNotifierBase<T> {
  Resolver get $resolver => ref.read(resolverProvider);
}

extension WidgetRefResolverExtension on WidgetRef {
  Resolver get $resolver => read(resolverProvider);
}

extension RefResolverExtension on Ref {
  Resolver get $resolver => read(resolverProvider);
}
