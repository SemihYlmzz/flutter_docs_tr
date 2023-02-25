import 'package:dart_lang_tr/features/features.dart';

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
        const Text(
          'Dart is a client-optimized language for fast apps on any platform',
          style: TextStyle(fontSize: 28),
        ),
        const SizedBox(
          height: 16,
        ),
        const IconTextButton(),
        const SizedBox(height: 24),
        const SupportedByGoogle(),
        const SizedBox(height: 16),
        const DartGit(),
        // TODO: Info1 Part
        // TODO: Info2 Part
        // TODO: Info3 Part
        // TODO: Info4 Part
        // Todo: Try Dart Part

        const SizedBox(height: 700),
        const Text('Dart is free and open source'),
      ],
    );
  }
}
