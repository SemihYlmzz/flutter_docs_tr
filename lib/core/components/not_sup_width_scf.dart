import '../core.dart';

class NotSupWidthScf extends StatelessWidget {
  const NotSupWidthScf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.grey.shade900,
        child: const Center(
          child: Text(
            ApplicationConstants.NOT_SUPPORTED_WIDTH_TEXT,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
