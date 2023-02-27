import '../../../../features.dart';

class DartLogoWhiteTexted extends ConsumerWidget {
  final bool isSendingHome;
  const DartLogoWhiteTexted({
    super.key,
    this.isSendingHome = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: GestureDetector(
        onTap: () {
          if (isSendingHome) {
            ref.read(dartMainPageIndexProvider.notifier).state = MainPages.home;
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
