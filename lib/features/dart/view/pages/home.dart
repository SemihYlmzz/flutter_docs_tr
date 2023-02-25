import 'package:dart_lang_tr/features/features.dart';

class DartHome extends StatelessWidget {
  const DartHome({super.key});

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
