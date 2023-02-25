import 'package:dart_lang_tr/features/features.dart';

class AppbarTextButton extends ConsumerWidget {
  final String buttonText;
  final MainPages thisPage;
  const AppbarTextButton({
    super.key,
    required this.buttonText,
    required this.thisPage,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(dartMainPageIndexProvider);
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
              style: const TextStyle(
                  fontSize: 16, color: DartColorsDark.whiterTextColor),
            ),
          ),
        ),
        AnimatedContainer(
          duration: AppConstants.durationFast,
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
