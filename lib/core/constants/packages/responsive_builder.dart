import '../../core.dart';

class AppResponsiveBuilder {
  static const ScreenBreakpoints screenBreakpoints = ScreenBreakpoints(
    desktop: AppDoubles.minDesktopWidth,
    tablet: AppDoubles.minTabletWidth,
    watch: AppDoubles.minMobileWidth,
  );
}
