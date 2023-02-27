import '../../core.dart';

class AppBoleans {
  static isTablet({context}) => (MediaQuery.of(context).size.width <= 960);
}
