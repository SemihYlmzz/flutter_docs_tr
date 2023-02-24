import 'package:dart_lang_tr/features/dart/constants/dart_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/constants/colors/dart_colors.dart';

class DartHomeDrawer extends ConsumerWidget {
  const DartHomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Drawer(
      backgroundColor: DartColorsDark.primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: DartConstants.drawerItemsMain,
          ),
        ),
      ),
    );
  }
}
