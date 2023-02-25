import 'package:dart_lang_tr/features/features.dart';

class SupportedByGoogle extends StatelessWidget {
  const SupportedByGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAssets.assetsImagesDartImagesSupportedByGoogle,
      width: 180,
    );
  }
}
