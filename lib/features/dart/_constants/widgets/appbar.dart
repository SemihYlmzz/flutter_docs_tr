import '../../../features.dart';

class DartAppbarWidgets {
  static const textButtons = [
    AppbarTextButton(buttonText: 'Overview', thisPage: DartMainPages.overview),
    AppbarTextButton(buttonText: 'Docs', thisPage: DartMainPages.docs),
    AppbarTextButton(
        buttonText: 'Community', thisPage: DartMainPages.community),
    AppbarTextButton(buttonText: 'Try Dart', thisPage: DartMainPages.home),
    AppbarTextButton(buttonText: 'Get Dart', thisPage: DartMainPages.getDart),
    SizedBox(width: 16),
  ];
}
