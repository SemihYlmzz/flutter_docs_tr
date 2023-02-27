import '../../../../features.dart';

class DartLogoWhiteTexted extends ConsumerWidget {
  const DartLogoWhiteTexted({
    this.isSendingHome = false,
    super.key,
  });
  final bool isSendingHome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: GestureDetector(
        onTap: () {
          if (isSendingHome) {
            ref.read(dartMainPageIndexProvider.notifier).state =
                DartMainPages.home;
          }
        },
        child: LocalHero(
          tag: UniqueKey,
          child: SvgPicture.asset(
            DartImages.dartTextWhite,
            width: 90,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
