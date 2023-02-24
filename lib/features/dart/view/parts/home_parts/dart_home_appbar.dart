import 'package:dart_lang_tr/core/constants/colors/dart_colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/dart_constants.dart';
import '../../widgets/dart_logo_white_texted.dart';

PreferredSize dartHomeAppBar(
        {required context, required GlobalKey<ScaffoldState> scaffoldKey}) =>
    PreferredSize(
      preferredSize: const Size(double.infinity, 50),
      child: AppBar(
        backgroundColor: DartColorsDark.secondaryColor,
        leading: Row(
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
        leadingWidth: 200,
        actions: !DartConstants.isWidthSmall(context: context)
            ? DartConstants.appbarTextButtons
            : [],
      ),
    );
