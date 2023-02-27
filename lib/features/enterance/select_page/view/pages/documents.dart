import '../../../../features.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 32),
        width: double.infinity,
        child: const BaseColumn(
          children: [
            CreaterWords(),
            SizedBox(height: 32),
            GoToDocument(
              translatedSite: TranslatedSite(
                imagePath: DartImages.dartTextWhite,
                webSiteName: 'dart.dev',
                navigatePath: AppRoutes.routeNameDart,
              ),
            ),
            GoToDocument(
              translatedSite: TranslatedSite(
                imagePath: DartImages.dartTextWhite,
                webSiteName: 'dart.dev',
                navigatePath: AppRoutes.routeNameDart,
              ),
            ),
            GoToDocument(
              translatedSite: TranslatedSite(
                imagePath: DartImages.dartTextWhite,
                webSiteName: 'dart.dev',
                navigatePath: AppRoutes.routeNameDart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
