import '../../core.dart';

class AppLinearGradients {
  static const mainColorsLinearGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: AppColorList.mainColorsList,
  );
  static const sideColorsLinearGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: AppColorList.sideColorsList,
  );
}
