import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/assets/image_assets.dart';
import '../widgets/appbar_text_buttons.dart';

class DartHome extends StatefulWidget {
  const DartHome({super.key, required this.title});

  final String title;

  @override
  State<DartHome> createState() => _DartHomeState();
}

class _DartHomeState extends State<DartHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                const AppbarTextButton(
                  buttonText: 'Overview',
                  isSelected: true,
                ),
                const AppbarTextButton(
                  buttonText: 'Docs',
                  isSelected: false,
                ),
                const AppbarTextButton(
                  buttonText: 'Community',
                  isSelected: false,
                ),
                const AppbarTextButton(
                  buttonText: 'Try Dart',
                  isSelected: false,
                ),
                const AppbarTextButton(
                  buttonText: 'Get Dart',
                  isSelected: false,
                ),
                const SizedBox(
                  width: 16,
                ),
              ]
            : [],
      ),
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
