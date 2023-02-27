import '../../core.dart';

PreferredSize baseAppBar(
  BuildContext context, {
  void Function()? backFunction,
  String? titleText,
}) =>
    PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 56),
      child: AppBar(
        backgroundColor: AppColors.backgroundColorLight,
        leading: GestureDetector(
          onTap: backFunction ?? () {},
          child: const Icon(
            Icons.clear,
            color: Colors.black,
          ),
        ),
        title: GradientText(
          titleText ?? '',
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        elevation: 0,
      ),
    );
