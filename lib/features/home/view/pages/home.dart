library home.dart;

import '../../../features.dart';

part 'desktop.dart';
part 'tablet.dart';
part 'mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints:
          const ScreenBreakpoints(desktop: 1023, tablet: 499, watch: 320),
      mobile: const HomeMobile(),
      desktop: const HomeDesktop(),
      tablet: const HomeTablet(),
      watch: Container(color: Colors.grey.shade900),
    );
  }
}
