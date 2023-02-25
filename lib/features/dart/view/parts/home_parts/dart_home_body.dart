import 'package:dart_lang_tr/core/constants/colors/dart_colors.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../pages/welcome.dart';
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
              yukaridakiSabitYazi(),
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

  Container yukaridakiSabitYazi() {
    return Container(
      color: DartColorsDark.deepDarkDartColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SelectableText.rich(
            textAlign: TextAlign.center,
            TextSpan(
              style: const TextStyle(
                  color: DartColorsDark.whiterTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
              children: [
                const TextSpan(
                  text: 'Preview the future of Dart and Flutter with the ',
                ),
                TextSpan(
                    text: 'Dart 3 alpha release ',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('Tap Here onTap'),
                    style: const TextStyle(color: DartColorsDark.blue)),
                const TextSpan(
                  text: 'and on-demand content from ',
                ),
                TextSpan(
                    text: 'Flutter Forward',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () =>
                          print(MediaQuery.of(context).size.width.toString()),
                    style: const TextStyle(color: DartColorsDark.blue)),
                const TextSpan(
                  text: '.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
