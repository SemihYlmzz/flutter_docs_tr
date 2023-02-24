import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/colors/dart_colors.dart';

class ExpandableIcon extends StatelessWidget {
  const ExpandableIcon({
    super.key,
    required this.isExpanded,
  });

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      duration: AppConstants.durationFast,
      turns: isExpanded ? 0.5 : 0,
      child: const Icon(
        Icons.expand_more,
        color: DartColorsDark.normalTextColor,
        size: 25,
      ),
    );
  }
}
