import '../../core.dart';

class AlignedFadeInLeft extends StatelessWidget {
  const AlignedFadeInLeft({
    required this.child,
    super.key,
    this.delayDuration,
    this.alignment,
    this.left,
    this.right,
    this.bottom,
    this.top,
  });
  final Duration? delayDuration;
  final Alignment? alignment;
  final double? left;
  final double? right;
  final double? bottom;
  final double? top;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: delayDuration ?? Duration.zero,
      child: Align(
        alignment: alignment ?? Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(
            left: left ?? 0,
            right: right ?? 0,
            bottom: bottom ?? 0,
            top: top ?? 0,
          ),
          child: child,
        ),
      ),
    );
  }
}
