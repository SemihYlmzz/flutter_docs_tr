import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/assets/image_assets.dart';
import '../../../_providers/dart/main_page_index.dart';
import '../../constants/enums.dart';

class DartLogoWhiteTexted extends ConsumerWidget {
  final bool isSendingHome;
  const DartLogoWhiteTexted({
    super.key,
    this.isSendingHome = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: GestureDetector(
        onTap: () {
          if (isSendingHome) {
            ref.read(dartMainPageIndexProvider.notifier).state = MainPages.home;
          }
        },
        child: SvgPicture.asset(
          Assets.assetsImagesDartTextWhite,
          width: 90,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
