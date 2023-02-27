import '../../../features.dart';

class DrawerItemModel {
  final String itemText;
  final List<DrawerItemModel> items;
  final int tier;
  final IconData? iconData;
  final bool isExpanded;
  DrawerItemModel(
      {required this.itemText,
      this.isExpanded = false,
      this.items = const [],
      required this.tier,
      this.iconData});
}
