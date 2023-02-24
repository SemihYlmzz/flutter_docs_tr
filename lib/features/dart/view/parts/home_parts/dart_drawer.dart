import 'package:dart_lang_tr/features/dart/model/drawer_item2_model.dart';
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
    List<DrawerItem1Model> itemsList = [
      DrawerItem1Model('Overview', []),
      DrawerItem1Model('Community', []),
      DrawerItem1Model('Try Dart', []),
      DrawerItem1Model('Get Dart', []),
      DrawerItem1Model('Docs', []),
      DrawerItem1Model(
          'Samples & tutorials', [DrawerItem2Model('itemText', [])]),
      DrawerItem1Model('Language', [DrawerItem2Model('itemText', [])]),
      DrawerItem1Model('Core libraries', [DrawerItem2Model('itemText', [])]),
      DrawerItem1Model('Packages', [DrawerItem2Model('itemText', [])]),
      DrawerItem1Model('Development', [DrawerItem2Model('itemText', [])]),
      DrawerItem1Model(
          'Tools & techniques', [DrawerItem2Model('itemText', [])]),
      DrawerItem1Model('Resources', [DrawerItem2Model('itemText', [])]),
      DrawerItem1Model('Related sites', [DrawerItem2Model('itemText', [])]),
    ];

    return Drawer(
      backgroundColor: DartColorsDark.primaryColor,
      child: Column(
        children: [
          const SizedBox(height: 75),
          const Divider(
            height: 0.1,
          ),
          const SizedBox(height: 45),
          Expanded(
            child: ListView.builder(
                itemCount: itemsList.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: DrawerItems(
                        itemText: itemsList[index].itemText,
                        isExpandable: itemsList[index].items.isNotEmpty,
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
