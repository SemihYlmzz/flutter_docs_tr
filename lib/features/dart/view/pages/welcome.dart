import 'package:dart_lang_tr/features/dart/constants/video_assets.dart';
import 'package:dart_lang_tr/features/dart/constants/image_assets.dart'
    as image;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/constants/colors/dart_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Color gitIconColor = DartColorsDark.normalTextColor;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        VideoPlayerController.asset(Assets.assetsVideosDartVideosHotReload)
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
        Container(
          constraints: const BoxConstraints(maxWidth: 1340),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: VideoPlayer(_controller),
          ),
        ),
        const SizedBox(height: 64),
        const Text(
          'Dart is a client-optimized language for fast apps on any platform',
          style: TextStyle(fontSize: 28),
        ),
        const SizedBox(
          height: 16,
        ),
        MouseRegion(
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
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Image.asset(
          image.Assets.assetsImagesDartImagesSupportedByGoogle,
          width: 180,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SelectableText(
              'Dart is free and open source',
              style: TextStyle(
                  color: DartColorsDark.normalTextColor, fontSize: 18),
            ),
            const SizedBox(
              width: 4,
            ),
            StatefulBuilder(builder: (context, setGithubIconState) {
              return MouseRegion(
                onEnter: (event) => setGithubIconState(() {
                  gitIconColor = DartColorsDark.whiterTextColor;
                }),
                onExit: (event) => setGithubIconState(() {
                  gitIconColor = DartColorsDark.normalTextColor;
                }),
                cursor: SystemMouseCursors.click,
                child: SvgPicture.asset(
                    image.Assets.assetsImagesDartImagesGithubIcon,
                    width: 18,
                    colorFilter:
                        ColorFilter.mode(gitIconColor, BlendMode.srcIn)),
              );
            }),
          ],
        ),
        const SizedBox(height: 700),
        const Text('Dart is free and open source'),
      ],
    );
  }
}
