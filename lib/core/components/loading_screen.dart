import '../core.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    required this.isLoading,
    required this.child,
    required this.size,
    super.key,
  });
  final bool isLoading;
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            width: size.width,
            height: size.height,
            color: Colors.black87,
            child: Center(
              child: Lottie.asset(
                'assets/lotties/6862-slinky-toy.json',
                width: size.width * 0.7,
                height: size.height * 0.7,
              ),
            ),
          ),
      ],
    );
  }
}
