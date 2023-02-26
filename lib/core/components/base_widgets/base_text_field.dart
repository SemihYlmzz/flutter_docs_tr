import 'package:flutter/material.dart';

class BaseTextField extends StatefulWidget {
  const BaseTextField({super.key});

  @override
  State<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: TextField(),
    );
  }
}
