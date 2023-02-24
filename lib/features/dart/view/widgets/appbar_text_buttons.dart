import 'package:dart_lang_tr/core/constants/colors/dart_colors.dart';
import 'package:dart_lang_tr/features/_providers/dart/main_page_index.dart';
import 'package:dart_lang_tr/features/dart/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppbarTextButton extends ConsumerWidget {
  final String buttonText;
  final MainPages currentPage;
  final MainPages thisPage;
  const AppbarTextButton({
    super.key,
    required this.buttonText,
    required this.currentPage,
    required this.thisPage,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              ref.read(dartMainPageIndexProvider.notifier).state = thisPage;
            },
            style: ElevatedButton.styleFrom().copyWith(
              elevation: const MaterialStatePropertyAll(0),
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (states) {
                  return Colors.transparent;
                },
              ),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.lightBlue;
                  }
                  return Colors.white;
                },
              ),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 4,
          width: 80,
          color: (currentPage != thisPage || currentPage == MainPages.home)
              ? Colors.transparent
              : DartColorsDark.darkBlue,
        )
      ],
    );
  }
}
