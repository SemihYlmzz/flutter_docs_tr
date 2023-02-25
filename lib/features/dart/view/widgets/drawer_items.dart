import 'package:dart_lang_tr/core/constants/colors/dart_colors.dart';
import 'package:dart_lang_tr/features/dart/model/drawer_item1_model.dart';
import 'package:flutter/material.dart';

class DrawerItemHeader extends StatefulWidget {
  final DrawerItemModel drawerItemModel;
  const DrawerItemHeader({
    super.key,
    required this.drawerItemModel,
  });

  @override
  State<DrawerItemHeader> createState() => _DrawerItemHeaderState();
}

class _DrawerItemHeaderState extends State<DrawerItemHeader> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    List<Widget> mywidgets = [];
    for (int i = 0; i < widget.drawerItemModel.items.length; i++) {
      mywidgets.add(
          DrawerItemHeader(drawerItemModel: widget.drawerItemModel.items[i]));
    }
    return Padding(
      padding: EdgeInsets.only(
          left: widget.drawerItemModel.tier == 0
              ? 0
              : (widget.drawerItemModel.tier - 1) * 16),
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: widget.drawerItemModel.items.isNotEmpty
            ? ExpansionTile(
                title: Text(
                  widget.drawerItemModel.itemText,
                  style: TextStyle(
                      fontSize: widget.drawerItemModel.tier > 0 ? 14 : 18),
                ),
                collapsedIconColor: DartColorsDark.normalTextColor,
                collapsedTextColor: DartColorsDark.normalTextColor,
                iconColor: DartColorsDark.normalTextColor,
                textColor: DartColorsDark.normalTextColor,
                shape: InputBorder.none,
                children: mywidgets,
              )
            : ListTile(
                title: Row(
                  children: [
                    Text(
                      widget.drawerItemModel.itemText,
                      style: TextStyle(
                        fontSize: widget.drawerItemModel.tier > 0 ? 14 : 18,
                        color: DartColorsDark.normalTextColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    if (widget.drawerItemModel.iconData != null)
                      Icon(
                        widget.drawerItemModel.iconData!,
                        color: DartColorsDark.normalTextColor,
                        size: 13,
                      )
                  ],
                ),
                onTap: () {},
              ),
      ),
    );
  }
}
