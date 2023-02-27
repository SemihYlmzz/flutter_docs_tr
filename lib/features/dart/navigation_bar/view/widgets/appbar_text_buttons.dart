import '../../../../features.dart';

class AppbarTextButton extends ConsumerWidget {
  const AppbarTextButton({
    required this.buttonText,
    required this.thisPage,
    super.key,
  });
  final String buttonText;
  final DartMainPages thisPage;

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
                fontSize: 16,
                color: DartColorsDark.whiterTextColor,
              ),
            ),
          ),
        ),
        AnimatedContainer(
          duration: AppDurations.duration370,
          height: 4,
          width: 80,
          color: (currentPage != thisPage || currentPage == DartMainPages.home)
              ? Colors.transparent
              : DartColorsDark.darkBlue,
        )
      ],
    );
  }
}
