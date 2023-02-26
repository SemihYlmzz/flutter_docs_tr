import '../../core.dart';

class ProfilePhotoPicker extends ConsumerWidget {
  const ProfilePhotoPicker({required this.profileImage, super.key});
  final Uint8List? profileImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const boxWidth = 177.0;
    const boxHeight = 177.0;
    return GradientCircleContainer(
      iconData: Icons.person,
      child: profileImage != null
          ? FadeIn(
              child: Container(
                height: boxHeight - 15,
                width: boxWidth - 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: MemoryImage(profileImage!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
