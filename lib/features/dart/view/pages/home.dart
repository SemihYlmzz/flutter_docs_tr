import 'package:dart_lang_tr/core/constants/colors/dart_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/dart_home_appbar.dart';

class DartHome extends ConsumerWidget {
  const DartHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: DartColorsDark.primaryColor,
      appBar: dartHomeAppBar(context: context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              MediaQuery.of(context).size.width.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
