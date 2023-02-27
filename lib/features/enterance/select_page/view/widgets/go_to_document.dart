import '../../../../features.dart';

class GoToDocument extends StatefulWidget {
  const GoToDocument({
    required this.translatedSite,
    super.key,
  });
  final TranslatedSite translatedSite;

  @override
  State<GoToDocument> createState() => _GoToDocumentState();
}

class _GoToDocumentState extends State<GoToDocument> {
  PageController pageController = PageController();
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: MouseRegion(
        onEnter: (event) {
          pageController.animateToPage(
            1,
            duration: AppDurations.duration300,
            curve: Curves.decelerate,
          );
        },
        onExit: (event) {
          pageController.animateToPage(
            0,
            duration: AppDurations.duration200,
            curve: Curves.easeIn,
          );
        },
        cursor: MaterialStateMouseCursor.clickable,
        child: GestureDetector(
          onTap: () {
            context.router.pushNamed('/dart');
          },
          child: Container(
            width: 600,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(12),
            ),
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              controller: pageController,
              children: [
                Center(
                  child: SvgPicture.asset(
                    DartImages.dartTextWhite,

                    /// TODO: Svg Gelmeyebilir. Asset'e çevir
                    height: 75,
                  ),
                ),
                Center(
                  child: Text(
                    'dart.dev',
                    style: GoogleFonts.openSans(fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
