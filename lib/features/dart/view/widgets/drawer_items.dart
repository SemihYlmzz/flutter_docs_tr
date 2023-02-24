import 'package:dart_lang_tr/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors/dart_colors.dart';
import 'expandable_icon.dart';

class DrawerItems extends StatefulWidget {
  final String itemText;
  final bool isExpandable;
  const DrawerItems({
    super.key,
    this.isExpandable = false,
    required this.itemText,
  });

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isExpanded = !isExpanded;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: AppConstants.durationFast,
        height: isExpanded
            ? 160
            : widget.isExpandable
                ? 61
                : 53,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: widget.isExpandable ? 25.0 : 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.itemText,
                      style: const TextStyle(
                        color: DartColorsDark.normalTextColor,
                        fontSize: 18,
                      ),
                    ),
                    if (widget.isExpandable)
                      ExpandableIcon(isExpanded: isExpanded),
                  ],
                ),
                if (widget.isExpandable)
                  const Column(
                    children: [],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
