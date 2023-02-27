import '../../core.dart';

class AppBooleans {
  static isTablet({context}) => (MediaQuery.of(context).size.width <= 960);
}
