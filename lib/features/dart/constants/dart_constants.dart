import 'package:dart_lang_tr/features/features.dart';

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
