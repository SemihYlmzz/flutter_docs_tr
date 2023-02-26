import '../../../../features.dart';

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
                ImageAssets.assetsImagesDartImagesGithubIcon,
                width: 18,
                colorFilter: ColorFilter.mode(gitIconColor, BlendMode.srcIn)),
          );
        }),
      ],
    );
  }
}
