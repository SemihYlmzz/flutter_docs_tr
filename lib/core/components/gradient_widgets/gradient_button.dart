import '../../core.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    required this.text,
    this.width = 320,
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  final double? width;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: const LinearGradient(
            begin: Alignment(0, -4),
            colors: ColorConstants.MAIN_COLORS_LIST,
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            onPressed?.call();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
