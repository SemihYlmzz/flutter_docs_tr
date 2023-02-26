import '../../../features.dart';

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
        ));
  }
}
