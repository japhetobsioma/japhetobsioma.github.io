import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'shared_pref_provider.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier(this.count, this.ref) : super(count);
  final int count;
  final ProviderRefBase ref;

  void increment() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    state++;
    sharedPreferences.setInt('counter', state);
  }
}

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);
  final count = sharedPreferences.getInt('counter') ?? 0;
  return CounterNotifier(count, ref);
}, name: 'counterProvider');
