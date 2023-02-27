import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_hero/local_hero.dart';

import 'app.dart';

void main() {
  runApp(
    ProviderScope(
      child: LocalHeroScope(
        duration: const Duration(milliseconds: 200),
        child: App(),
      ),
    ),
  );
}
