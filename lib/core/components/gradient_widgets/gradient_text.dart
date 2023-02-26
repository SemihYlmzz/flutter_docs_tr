import '../../core.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    this.gradient,
    super.key,
    this.style,
    this.align,
    this.maxLines = 1,
  });

  final int maxLines;
  final String text;
  final TextStyle? style;
  final Gradient? gradient;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) =>
          (gradient ?? ColorConstants.MAIN_LINEAR100).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style != null
            ? style!.copyWith(
                shadows: [
                  const Shadow(
                    color: Colors.orange,
                    blurRadius: 12,
                  )
                ],
              )
            : null,
        textAlign: align,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
