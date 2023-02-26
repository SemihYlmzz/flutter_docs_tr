// ignore_for_file: constant_identifier_names
import '../core.dart';

class ColorConstants {
  static const backgroundColorLight = Color(0xFFF0F0F0);
  static const primaryColor1 = Color.fromARGB(255, 255, 134, 166);
  static const primaryColor2 = Color.fromARGB(255, 255, 227, 102);
  static const MAIN_COLORS_LIST = [primaryColor1, primaryColor2];
  static const MAIN_LINEAR100 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: MAIN_COLORS_LIST,
  );
  static const sideColor1 = Color.fromARGB(255, 60, 126, 223);
  static const sideColor2 = Color.fromARGB(255, 147, 51, 183);
  static const SIDE_COLOR_LIST = [sideColor1, sideColor2];
  static const SIDE_LINEAR100 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: SIDE_COLOR_LIST,
  );
}
