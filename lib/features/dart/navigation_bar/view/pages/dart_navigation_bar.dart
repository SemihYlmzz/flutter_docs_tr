import '../../../../features.dart';

class DartHomeDrawer extends ConsumerWidget {
  const DartHomeDrawer({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      backgroundColor: DartColorsDark.primaryColor,
      child: Column(
        children: [
          const SizedBox(height: 75),
          const Divider(height: 0.1),
          const SizedBox(height: 45),
          Expanded(
            child: ListView.builder(
              itemCount: Data.itemsList.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  right: 16,
                  left: 16,
                  top: index == 5 ? 8 : 0,
                ),
                child: DrawerItemHeader(
                  drawerItemModel: Data.itemsList[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DartView extends StatelessWidget {
  const DartView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: DartColorsDark.primaryColor,
      drawer: const DartHomeDrawer(),
      body: DartMainBody(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}

class DartMainBody extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const DartMainBody({super.key, required this.scaffoldKey});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DartHomeBodyState();
}

class _DartHomeBodyState extends ConsumerState<DartMainBody> {
  bool isUserInWelcome = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const StableTopContainer(),
              if (isUserInWelcome) ...[
                const WelcomeScreen(),
              ] else
                const Text('data'),

              // TODO: Licence Part
            ],
          ),
        ),
        DartAppBar(scaffoldKey: widget.scaffoldKey),
      ],
    );
  }
}

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
