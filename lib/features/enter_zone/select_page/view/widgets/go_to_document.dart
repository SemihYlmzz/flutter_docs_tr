import '../../../../features.dart';

class GoToDocument extends StatefulWidget {
  /// TODO: final String webSiteName;
  /// TODO: final String imagePath;
  /// TODO: final String NAVİGATOR;
  const GoToDocument({
    super.key,
  });

  @override
  State<GoToDocument> createState() => _GoToDocumentState();
}

class _GoToDocumentState extends State<GoToDocument> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: MouseRegion(
        onEnter: (event) {
          onHover = true;
          setState(() {});
        },
        onExit: (event) {
          onHover = false;
          setState(() {});
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
            child: Center(
              child: onHover
                  ? FadeInUp(
                      child: SvgPicture.asset(
                        ImageAssets.assetsImagesDartImagesDartTextWhite,
                        height: 75,
                      ),
                    )
                  : FadeIn(
                      duration: ApplicationConstants.DURATION700,
                      child: Text(
                        'dart.dev',
                        style: GoogleFonts.openSans(fontSize: 40),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
