import '../../../../features.dart';

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

    _controller = VideoPlayerController.asset(DartVideos.hotReload)
      ..addListener(() {
        setState(() {});
      })
      ..initialize().then((value) {
        _controller
          ..setVolume(0)
          ..play()
          ..setLooping(true);
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
        const ColoredBox(
          color: DartColorsDark.deepDarkDartColor,
          child: Padding(
            padding: EdgeInsets.only(bottom: 80, left: 56, right: 56),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 80,
              children: [
                Row(),
                ImagedInfoCard(
                  imagePath: DartImages.multiPlatPerf,
                  topText: 'Optimized',
                  bottomText: 'For UI',
                  description:
                      'Develop with a programming language specialized around the needs of user interface creation',
                ),
                ImagedInfoCard(
                  imagePath: DartImages.clientOpt,
                  topText: 'Productive',
                  bottomText: 'Development',
                  description:
                      'Make changes iteratively: use hot reload to see the result instantly in your running app',
                ),
                ImagedInfoCard(
                  imagePath: DartImages.productiveDev,
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
  const ImagedInfoCard({
    required this.imagePath,
    required this.topText,
    required this.bottomText,
    required this.description,
    super.key,
  });
  final String imagePath;
  final String topText;
  final String bottomText;
  final String description;

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
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                bottomText,
                style: GoogleFonts.openSans(
                  fontSize: 28,
                  color: DartColorsDark.whiterTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 16,
              color: DartColorsDark.normalTextColor,
            ),
          ),
        ],
      ),
    );
  }
}

class HotReloadVideo extends StatelessWidget {
  const HotReloadVideo({
    required VideoPlayerController controller,
    super.key,
  }) : _controller = controller;

  final VideoPlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1340),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: VideoPlayer(_controller),
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 140,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.play_circle_fill, color: DartColorsDark.blue),
                SizedBox(width: 8),
                Text(
                  'Watch video',
                  style: TextStyle(
                    color: DartColorsDark.blue,
                    fontWeight: FontWeight.w600,
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

class SupportedByGoogle extends StatelessWidget {
  const SupportedByGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      DartImages.supByGoogle,
      width: 180,
    );
  }
}

class DartGit extends StatefulWidget {
  const DartGit({super.key});

  @override
  State<DartGit> createState() => _DartGitState();
}

class _DartGitState extends State<DartGit> {
  Color gitIconColor = DartColorsDark.normalTextColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SelectableText(
          'Dart is free and open source',
          style: TextStyle(color: DartColorsDark.normalTextColor, fontSize: 18),
        ),
        const SizedBox(
          width: 4,
        ),
        StatefulBuilder(
          builder: (context, setGithubIconState) {
            return MouseRegion(
              onEnter: (event) => setGithubIconState(() {
                gitIconColor = DartColorsDark.whiterTextColor;
              }),
              onExit: (event) => setGithubIconState(() {
                gitIconColor = DartColorsDark.normalTextColor;
              }),
              cursor: SystemMouseCursors.click,
              child: SvgPicture.asset(
                DartImages.githubIcon,
                width: 18,
                colorFilter: ColorFilter.mode(gitIconColor, BlendMode.srcIn),
              ),
            );
          },
        ),
      ],
    );
  }
}
