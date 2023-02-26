import '../../core.dart';

abstract class BaseState<T extends StatefulHookConsumerWidget>
    extends ConsumerState<T> {
  ThemeData get themeData => Theme.of(context);
  double dynamicHeight(double value) => value >= 1
      ? MediaQuery.of(context).size.height * value
      : value <= 0
          ? 0
          : MediaQuery.of(context).size.height * value;
  double dynamicWidth(double value) => value >= 1
      ? MediaQuery.of(context).size.width * value
      : value <= 0
          ? 0
          : MediaQuery.of(context).size.width;
}
