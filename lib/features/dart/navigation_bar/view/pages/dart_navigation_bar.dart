import '../../../../features.dart';

class DartView extends StatefulWidget {
  const DartView({super.key});

  @override
  State<DartView> createState() => _DartViewState();
}

class _DartViewState extends State<DartView> {
  bool isUserInWelcome = true;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: DartColorsDark.primaryColor,
      drawer: Drawer(
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
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
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
          Container(
            width: double.infinity,
            color: DartColorsDark.secondaryColor,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: Row(
                    children: [
                      if (AppBooleans.isTablet(context: context))
                        Padding(
                          padding: const EdgeInsets.only(left: 8),

                          /// TODO: AppPadings 2-4-8-16-32-64
                          ///
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
                if (!AppBooleans.isTablet(context: context))
                  FadeIn(
                    child: Row(
                      children: [
                        ...appbarTextButtons(),
                        IconButton(
                          onPressed: () {
                            context.router.navigateNamed('/');
                          },
                          icon: const Icon(Icons.exit_to_app_outlined),
                        ),
                      ],
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
