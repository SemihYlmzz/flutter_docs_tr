import '../../core.dart';

class GradientCircleContainer extends ConsumerWidget {
  const GradientCircleContainer({
    super.key,
    this.boxHeight = 177,
    this.boxWidth = 177,
    this.child,
    this.linearGradient = AppLinearGradients.sideColorsLinearGradient,
    this.iconData = Icons.add,
    this.iconSize = 140,
  });
  final double boxHeight;
  final double boxWidth;
  final LinearGradient linearGradient;
  final Widget? child;
  final IconData? iconData;
  final double? iconSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => linearGradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Container(
            height: boxHeight,
            width: boxWidth,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 8),
            ),
            child: child == null
                ? Icon(
                    iconData,
                    size: iconSize,
                    color: Colors.white,
                  )
                : const SizedBox(),
          ),
        ),
        if (child != null) child!,
      ],
    );
  }
}
