import '../../features.dart';

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

class DartColorsDark {
  static const primaryColor = Color(0xff080a0b);
  static const secondaryColor = Color(0xff070E18);
  static const darkBlue = Color(0xff0D6399);
  static const deepDarkBlue = Color(0xff01010A);
  static const blue = Color(0xff35BAF5);

  static const normalTextColor = Color(0xffACA69D);
  static const whiterTextColor = Color(0xffD9D7D3);
  static const deepDarkDartColor = Color(0xff00060B);
}
