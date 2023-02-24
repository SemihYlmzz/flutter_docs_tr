import 'package:dart_lang_tr/core/constants/colors/dart_colors.dart';
import 'package:flutter/material.dart';

import '../parts/home_parts/dart_drawer.dart';
import '../parts/home_parts/dart_home_appbar.dart';
import '../parts/home_parts/dart_home_body.dart';

class DartHome extends StatelessWidget {
  const DartHome({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: DartColorsDark.primaryColor,
      drawer: const DartHomeDrawer(),
      appBar: dartHomeAppBar(context: context, scaffoldKey: scaffoldKey),
      body: dartHomeBody(context),
    );
  }
}
