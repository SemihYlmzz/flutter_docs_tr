import 'package:dart_lang_tr/features/dart/view/widgets/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/constants/colors/dart_colors.dart';
import '../../../model/drawer_item1_model.dart';

class DartHomeDrawer extends ConsumerWidget {
  const DartHomeDrawer({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<DrawerItemModel> itemsList = [
      DrawerItemModel('Overview', [], 0),
      DrawerItemModel('Community', [], 0),
      DrawerItemModel('Try Dart', [], 0),
      DrawerItemModel('Get Dart', [], 0),
      DrawerItemModel('Docs', [], 0),
      DrawerItemModel(
          'Samples & tutorials',
          [
            DrawerItemModel('Language samples', [], 1),
            DrawerItemModel(
                'Codelabs',
                [
                  DrawerItemModel('List of Dart codelabs', [], 2),
                  DrawerItemModel('Language cheatsheet', [], 2),
                  DrawerItemModel('Iterable collections', [], 2),
                  DrawerItemModel('Asynchronous programming', [], 2),
                  DrawerItemModel('Null safety', [], 2),
                ],
                1),
            DrawerItemModel('Tutorials', [], 1),
          ],
          0),
      DrawerItemModel('Language', [DrawerItemModel('itemText', [], 1)], 0),
      DrawerItemModel(
          'Core libraries', [DrawerItemModel('itemText', [], 1)], 0),
      DrawerItemModel('Packages', [DrawerItemModel('itemText', [], 1)], 0),
      DrawerItemModel('Development', [DrawerItemModel('itemText', [], 1)], 0),
      DrawerItemModel(
          'Tools & techniques', [DrawerItemModel('itemText', [], 1)], 0),
      DrawerItemModel('Resources', [DrawerItemModel('itemText', [], 1)], 0),
      DrawerItemModel('Related sites', [DrawerItemModel('itemText', [], 1)], 0),
    ];

    return Drawer(
      backgroundColor: DartColorsDark.primaryColor,
      child: Column(
        children: [
          const SizedBox(height: 75),
          const Divider(height: 0.1),
          const SizedBox(height: 45),
          Expanded(
            child: ListView.builder(
                itemCount: itemsList.length,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                        right: 16,
                        left: 16,
                        top: index == 5 ? 8 : 0,
                      ),
                      child: DrawerItemHeader(
                        drawerItemModel: itemsList[index],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
