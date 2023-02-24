import 'package:flutter/material.dart';

import '../view/widgets/appbar_text_buttons.dart';
import '../view/widgets/drawer_item_1.dart';
import 'enums.dart';

class DartConstants {
  static isWidthSmall({context}) => (MediaQuery.of(context).size.width <= 960);
  static const appbarTextButtons = [
    AppbarTextButton(buttonText: 'Overview', thisPage: MainPages.overview),
    AppbarTextButton(buttonText: 'Docs', thisPage: MainPages.docs),
    AppbarTextButton(buttonText: 'Community', thisPage: MainPages.community),
    AppbarTextButton(buttonText: 'Try Dart', thisPage: MainPages.home),
    AppbarTextButton(buttonText: 'Get Dart', thisPage: MainPages.getDart),
    SizedBox(width: 16),
  ];

  static const drawerItemsMain = [
    SizedBox(height: 65),
    Divider(),
    SizedBox(height: 50),
    DrawerItems1(itemText: 'Overview'),
    DrawerItems1(itemText: 'Community'),
    DrawerItems1(itemText: 'Try Dart'),
    DrawerItems1(itemText: 'Get Dart'),
    DrawerItems1(itemText: 'Docs'),
    SizedBox(height: 10),
    DrawerItems1(isExpandable: true, itemText: 'Samples & tutorials'),
    DrawerItems1(isExpandable: true, itemText: 'Language'),
    DrawerItems1(isExpandable: true, itemText: 'Core libraries'),
    DrawerItems1(isExpandable: true, itemText: 'Packages'),
    DrawerItems1(isExpandable: true, itemText: 'Development'),
    DrawerItems1(isExpandable: true, itemText: 'Tools & techniques'),
    DrawerItems1(isExpandable: true, itemText: 'Resources'),
    DrawerItems1(isExpandable: true, itemText: 'Related sites'),
  ];
}
