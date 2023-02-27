import '../../../features.dart';

class DrawerItemModel {
  DrawerItemModel({
    required this.itemText,
    required this.tier,
    this.isExpanded = false,
    this.items = const [],
    this.iconData,
  });
  final String itemText;
  final List<DrawerItemModel> items;
  final int tier;
  final IconData? iconData;
  final bool isExpanded;
}
