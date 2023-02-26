library documents.dart;

import '../../../features.dart';

part 'documents_desktop.dart';
part 'documents_tablet.dart';
part 'documents_mobile.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints:
          const ScreenBreakpoints(desktop: 1023, tablet: 499, watch: 320),
      mobile: const DocumentsMobile(),
      desktop: const DocumentsDesktop(),
      tablet: const DocumentsTablet(),
      watch: Container(color: Colors.grey.shade900),
    );
  }
}
