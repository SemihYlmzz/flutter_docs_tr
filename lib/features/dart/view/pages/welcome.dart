import 'package:dart_lang_tr/features/features.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        VideoPlayerController.asset(VideoAssets.assetsVideosDartVideosHotReload)
          ..addListener(() {
            setState(() {});
          })
          ..initialize().then((value) {
            _controller.setVolume(0);
            _controller.play();
            _controller.setLooping(true);
          });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HotReloadVideo(controller: _controller),
        const SizedBox(height: 64),
        const SelectableText(
          'Dart is a client-optimized language for fast apps on any platform',
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        const IconTextButton(),
        const SizedBox(height: 24),
        const SupportedByGoogle(),
        const SizedBox(height: 48),
        const DartGit(),
        const SizedBox(height: 68),
        Container(
          color: DartColorsDark.deepDarkDartColor,
          child: const Padding(
            padding: EdgeInsets.only(bottom: 80, left: 56, right: 56),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 80,
              children: [
                Row(),
                ImagedInfoCard(
                  imagePath: ImageAssets
                      .assetsImagesDartImagesMultiplatformPerformanceLightOp12x,
                  topText: 'Optimized',
                  bottomText: 'For UI',
                  description:
                      'Develop with a programming language specialized around the needs of user interface creation',
                ),
                ImagedInfoCard(
                  imagePath: ImageAssets
                      .assetsImagesDartImagesClientOptimisedLightOp12x,
                  topText: 'Productive',
                  bottomText: 'Development',
                  description:
                      'Make changes iteratively: use hot reload to see the result instantly in your running app',
                ),
                ImagedInfoCard(
                  imagePath:
                      ImageAssets.assetsImagesDartImagesProductiveDevLightOp12x,
                  topText: 'Fast on All',
                  bottomText: 'Platforms',
                  description:
                      'Compile to ARM & x64 machine code for mobile, desktop, and backend. Or compile to JavaScript for the web',
                ),
              ],
            ),
          ),
        ),
        // Todo: Info2 Part
        // Todo: Info3 Part
        // Todo: Info4 Part
        // Todo: Try Dart Part

        const SizedBox(height: 700),
        const Text('Dart is free and open source'),
      ],
    );
  }
}

class ImagedInfoCard extends StatelessWidget {
  final String imagePath;
  final String topText;
  final String bottomText;
  final String description;

  const ImagedInfoCard({
    super.key,
    required this.imagePath,
    required this.topText,
    required this.bottomText,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 80,
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              Text(
                topText,
                style: GoogleFonts.openSans(
                    fontSize: 28,
                    color: DartColorsDark.whiterTextColor,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                bottomText,
                style: GoogleFonts.openSans(
                    fontSize: 28,
                    color: DartColorsDark.whiterTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
                fontSize: 16, color: DartColorsDark.normalTextColor),
          ),
        ],
      ),
    );
  }
}
