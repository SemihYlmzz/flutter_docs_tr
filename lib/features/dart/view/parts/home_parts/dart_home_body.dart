import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../pages/welcome.dart';
import '../../widgets/home_widgets/stable_top_container.dart';
import 'dart_home_appbar.dart';

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
            ],
          ),
        ),
        DartAppBar(scaffoldKey: widget.scaffoldKey),
      ],
    );
  }
}
