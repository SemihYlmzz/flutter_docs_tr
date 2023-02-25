import 'package:flutter/material.dart';

import '../view/widgets/appbar_text_buttons.dart';
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
}
