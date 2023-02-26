// ignore_for_file: constant_identifier_names

import '../core.dart';

class ApplicationConstants {
  static const NOT_SUPPORTED_WIDTH_TEXT =
      'We are not supporting too small devices.\n\nWe are sorry for this.';

  static const double NOT_SUPPORTED_WITH_DOUBLE = 320;
  static const double TABLET_WIDTH = 499;
  static const double DESKTOP_WITH = 1023;
  static const double APPBAR_HEIGHT = 56;
  static const ScreenBreakpoints SCREEN_BREAK_POINTS = ScreenBreakpoints(
    desktop: ApplicationConstants.DESKTOP_WITH,
    tablet: ApplicationConstants.TABLET_WIDTH,
    watch: ApplicationConstants.NOT_SUPPORTED_WITH_DOUBLE,
  );
  static const Duration DURATION300 = Duration(milliseconds: 300);
  static const Duration DURATION400 = Duration(milliseconds: 400);

  static const Duration DURATION500 = Duration(milliseconds: 500);
  static const Duration DURATION700 = Duration(milliseconds: 700);
  static const Duration DURATION1 = Duration(seconds: 1);
  static const Duration DURATION1500 = Duration(milliseconds: 1500);
  static const Duration DURATION2 = Duration(seconds: 2);
}
