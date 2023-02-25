import 'package:dart_lang_tr/features/dart/view/widgets/home_widgets/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/constants/colors/dart_colors.dart';
import '../../../data/home_data/drawer_items_data.dart';

class DartHomeDrawer extends ConsumerWidget {
  const DartHomeDrawer({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      backgroundColor: DartColorsDark.primaryColor,
      child: Column(
        children: [
          const SizedBox(height: 75),
          const Divider(height: 0.1),
          const SizedBox(height: 45),
          Expanded(
            child: ListView.builder(
                itemCount: Data.itemsList.length,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                        right: 16,
                        left: 16,
                        top: index == 5 ? 8 : 0,
                      ),
                      child: DrawerItemHeader(
                        drawerItemModel: Data.itemsList[index],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
