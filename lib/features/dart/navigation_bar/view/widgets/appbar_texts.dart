import '../../../../features.dart';

List<Widget> appbarTextButtons() => [
      const AppbarTextButton(
        buttonText: 'Overview',
        thisPage: DartMainPages.overview,
      ),
      const AppbarTextButton(
        buttonText: 'Docs',
        thisPage: DartMainPages.docs,
      ),
      const AppbarTextButton(
        buttonText: 'Community',
        thisPage: DartMainPages.community,
      ),
      const AppbarTextButton(
        buttonText: 'Try Dart',
        thisPage: DartMainPages.home,
      ),
      const AppbarTextButton(
        buttonText: 'Get Dart',
        thisPage: DartMainPages.getDart,
      ),
      const SizedBox(width: 16),
    ];
