import '../../../../features.dart';

class DrawerItemHeader extends StatelessWidget {
  const DrawerItemHeader({
    required this.drawerItemModel,
    super.key,
  });
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    final mywidgets = <Widget>[];
    for (var i = 0; i < drawerItemModel.items.length; i++) {
      mywidgets
          .add(DrawerItemHeader(drawerItemModel: drawerItemModel.items[i]));
    }
    return Padding(
      padding: EdgeInsets.only(
        left: drawerItemModel.tier == 0 ? 0 : (drawerItemModel.tier - 1) * 16,
      ),
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: drawerItemModel.items.isNotEmpty
            ? ExpansionTile(
                title: Text(
                  drawerItemModel.itemText,
                  style:
                      TextStyle(fontSize: drawerItemModel.tier > 0 ? 14 : 18),
                ),
                collapsedIconColor: DartColorsDark.normalTextColor,
                collapsedTextColor: DartColorsDark.normalTextColor,
                iconColor: DartColorsDark.normalTextColor,
                textColor: DartColorsDark.normalTextColor,
                shape: InputBorder.none,
                initiallyExpanded: drawerItemModel.isExpanded,
                children: mywidgets,
              )
            : ListTile(
                title: Row(
                  children: [
                    Text(
                      drawerItemModel.itemText,
                      style: TextStyle(
                        fontSize: drawerItemModel.tier > 0 ? 14 : 20,
                        color: DartColorsDark.normalTextColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    if (drawerItemModel.iconData != null)
                      Icon(
                        drawerItemModel.iconData,
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
