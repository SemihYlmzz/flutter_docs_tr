import 'package:flutter/material.dart';

import 'features/dart/view/pages/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const DartHome(title: 'Flutter Demo Home Page'),
    );
  }
}
