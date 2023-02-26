import '../../core.dart';

class OrLine extends StatelessWidget {
  const OrLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const Divider(
              thickness: 0.7,
              color: Colors.black,
              height: 36,
            ),
          ),
        ),
        const Text('OR'),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const Divider(
              thickness: 0.7,
              color: Colors.black,
              height: 36,
            ),
          ),
        ),
      ],
    );
  }
}
