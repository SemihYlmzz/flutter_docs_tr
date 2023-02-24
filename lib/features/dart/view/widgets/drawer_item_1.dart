import 'package:flutter/material.dart';

import '../../../../core/constants/colors/dart_colors.dart';

class DrawerItems1 extends StatelessWidget {
  final String itemText;
  final bool isExpandable;
  const DrawerItems1({
    super.key,
    this.isExpandable = false,
    required this.itemText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isExpandable ? 60 : 52,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              itemText,
              style: const TextStyle(
                  color: DartColorsDark.normalTextColor, fontSize: 19),
            ),
            if (isExpandable)
              const Icon(
                Icons.expand_more,
                color: DartColorsDark.normalTextColor,
                size: 25,
              ),
          ],
        ),
      ),
    );
  }
}
