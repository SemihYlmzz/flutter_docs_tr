import '../../core.dart';

class AppBooleans {
  static bool isTablet({required BuildContext context}) =>
      MediaQuery.of(context).size.width <= 960;
}
