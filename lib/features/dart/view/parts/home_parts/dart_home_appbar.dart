import '../../../../features.dart';

class DartAppBar extends ConsumerWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DartAppBar({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      color: DartColorsDark.secondaryColor,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (DartConstants.isWidthSmall(context: context))
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      onPressed: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 32,
                      ),
                    ),
                  ),
                const DartLogoWhiteTexted(isSendingHome: true),
              ],
            ),
          ),
          if (!DartConstants.isWidthSmall(context: context))
            FadeIn(
              child: const Row(
                children: DartConstants.appbarTextButtons,
              ),
            )
        ],
      ),
    );
  }
}
