import 'package:dart_lang_tr/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_hero/local_hero.dart';

void main() {
  runApp(const ProviderScope(
      child:
          LocalHeroScope(duration: Duration(milliseconds: 200), child: App())));
}
