import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final nameStreamProvider = StreamProvider<String>((ref) async* {
  await for (final name in RandomGenerator.randomNamesStream()) {
    yield name;
  }
});

final nameStreamProviderAutoDispose = StreamProvider.autoDispose<String>((
  ref,
) async* {
  await for (final name in RandomGenerator.randomNamesStream()) {
    yield name;
  }
});

/*final nameStreamProvider = StreamProvider<List<String>>((ref) async* {
  await Future.delayed(const Duration(seconds: 1));
  yield [];
  await Future.delayed(const Duration(seconds: 1));
  yield ['Alan'];
  await Future.delayed(const Duration(seconds: 1));
  yield ['Alan', 'Nancy'];
  await Future.delayed(const Duration(seconds: 1));

  yield ['Alan', 'Nancy', 'Eduardo'];
});*/
