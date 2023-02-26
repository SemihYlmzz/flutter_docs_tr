import '../../../../features.dart';

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
