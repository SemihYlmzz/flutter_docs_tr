import 'package:dart_lang_tr/features/dart/constants/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainPageIndexProvider = StateProvider<MainPages>((ref) {
  return MainPages.home;
});
