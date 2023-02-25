import 'package:animate_do/animate_do.dart';
import 'package:dart_lang_tr/core/constants/colors/dart_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/dart_constants.dart';
import '../../widgets/home_widgets/dart_logo_white_texted.dart';

class DartAppBar extends ConsumerWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DartAppBar({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      color: DartColorsDark.secondaryColor,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (DartConstants.isWidthSmall(context: context))
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      onPressed: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 32,
                      ),
                    ),
                  ),
                const DartLogoWhiteTexted(isSendingHome: true),
              ],
            ),
          ),
          if (!DartConstants.isWidthSmall(context: context))
            FadeIn(
              child: const Row(
                children: DartConstants.appbarTextButtons,
              ),
            )
        ],
      ),
    );
  }
}
