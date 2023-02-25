import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/colors/dart_colors.dart';

class StableTopContainer extends StatelessWidget {
  const StableTopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
