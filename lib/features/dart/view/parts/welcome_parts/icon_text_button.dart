import 'package:dart_lang_tr/features/features.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
                      color: DartColorsDark.blue, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
