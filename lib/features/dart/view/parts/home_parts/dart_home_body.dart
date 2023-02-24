import 'package:flutter/material.dart';

Center dartHomeBody(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          MediaQuery.of(context).size.width.toString(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    ),
  );
}
