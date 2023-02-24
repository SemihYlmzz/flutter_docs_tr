import 'package:dart_lang_tr/features/_providers/dart/main_page_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/assets/image_assets.dart';
import '../../constants/enums.dart';
import '../widgets/appbar_text_buttons.dart';

class DartHome extends ConsumerWidget {
  const DartHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: dartHomeAppBar(context: context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              MediaQuery.of(context).size.width.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

PreferredSize dartHomeAppBar({context}) => PreferredSize(
      preferredSize: const Size(double.infinity, 50),
      child: Consumer(builder: (context, ref, child) {
        final mainPageIndex = ref.watch(dartMainPageIndexProvider);
        return AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                  child: SvgPicture.asset(
                    Assets.assetsImagesDartTextWhite,
                    width: 90,
                    fit: BoxFit.fitWidth,
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
                    thisPage: MainPages.tryDart,
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
