import 'package:dart_lang_tr/core/constants/colors/dart_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/assets/image_assets.dart';
import '../../../_providers/dart/main_page_index.dart';
import '../../constants/enums.dart';
import 'appbar_text_buttons.dart';

PreferredSize dartHomeAppBar({context}) => PreferredSize(
      preferredSize: const Size(double.infinity, 50),
      child: Consumer(builder: (context, ref, child) {
        final mainPageIndex = ref.watch(dartMainPageIndexProvider);
        return AppBar(
          backgroundColor: DartColorsDark.secondaryColor,
          leading: SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (MediaQuery.of(context).size.width <= 960)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 32,
                        )),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: GestureDetector(
                    onTap: () {
                      ref.read(dartMainPageIndexProvider.notifier).state =
                          MainPages.home;
                    },
                    child: SvgPicture.asset(
                      Assets.assetsImagesDartTextWhite,
                      width: 90,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
          leadingWidth: 200,
          actions: !(MediaQuery.of(context).size.width <= 960)
              ? [
                  AppbarTextButton(
                    buttonText: 'Overview',
                    currentPage: mainPageIndex,
                    thisPage: MainPages.overview,
                  ),
                  AppbarTextButton(
                    buttonText: 'Docs',
                    currentPage: mainPageIndex,
                    thisPage: MainPages.docs,
                  ),
                  AppbarTextButton(
                    buttonText: 'Community',
                    currentPage: mainPageIndex,
                    thisPage: MainPages.community,
                  ),
                  AppbarTextButton(
                    buttonText: 'Try Dart',
                    currentPage: mainPageIndex,
                    thisPage: MainPages.home,
                  ),
                  AppbarTextButton(
                    buttonText: 'Get Dart',
                    currentPage: mainPageIndex,
                    thisPage: MainPages.getDart,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ]
              : [],
        );
      }),
    );
