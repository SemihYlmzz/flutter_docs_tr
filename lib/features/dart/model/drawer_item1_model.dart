import 'package:flutter/material.dart';

class DrawerItemModel {
  final String itemText;
  final List<DrawerItemModel> items;
  final int tier;
  final IconData? iconData;
  DrawerItemModel(
      {required this.itemText,
      this.items = const [],
      required this.tier,
      this.iconData});
}
